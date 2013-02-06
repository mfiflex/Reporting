require 'metaforce'
require 'nokogiri'
require 'salesforce_bulk'
require 'csv'
require 'mailer'
require 'Constants'
require 'pg'
require 'import_custom_objects'


class ImportSalesforceToPG
  include MFiFlexConstants
  #include Databasedotcom::Rails::Controller
    
  def importEverything(salesforceUsername,salesforcePasswordWithSecurity,salesforcePassword,salesforceSecurityToken,salesforceOrgId,conn,whereClause)
    
      client = Metaforce.new :username => salesforceUsername, :password => salesforcePassword, :security_token => salesforceSecurityToken
      Metaforce::Job.disable_threading!
      manifest = Metaforce::Manifest.new(:custom_object => ['*'],:profile => ['*']) #Create Package.xml For Retrieving Metadata API
      client.retrieve_unpackaged(manifest).extract_to('./src').perform #Retrieves Metadata Objects in XML Format
      custom_object = client.list_metadata('CustomObject').collect { |t| t.full_name } #Retrieve List Of Custom Objects
      tables_list = conn.exec("select * from pg_tables where schemaname='public'") #Fetches Schema of Existing Tables in Postgres 
    
      if (tables_list.ntuples == 0) #Create Tables If Schema is Empty 
        create_status_table = "CREATE TABLE mfiforce__last_fetch_date_c(id SERIAL,fetchStatus character(50),lastfetchStartDate timestamp with time zone,lastfetchEndDate timestamp with time zone,error_description varchar(32768),salesforce_org_id character(255),CONSTRAINT mfiforce__last_fetch_date_c_pkey PRIMARY KEY (id));" 
        create_index_fetch_table = "CREATE INDEX mfiforce__last_fetch_date_c_lastfetchStartDate_sfid_idx ON mfiforce__last_fetch_date_c USING btree (lastfetchStartDate, salesforce_org_id);"
        conn.exec(create_status_table)
        conn.exec(create_index_fetch_table)
        custom_object.each do |custom_object_value|
           append_object = custom_object_value + ".object"
           custom_object_path = "./src/objects/" + append_object
           custom_object_value_str = ("mfiforce__" + custom_object_value).downcase! #Append Namespaces
           if File.exists?(custom_object_path) #Create Tables If Metadata Custom Object File Exists
               doc = Nokogiri::XML(File.open(custom_object_path)) #Parse XML Metadata Object File
               custom_fields = doc.xpath('//xmlns:fields/xmlns:fullName') #Retrieves Field Names
               custom_field_types = doc.xpath('//xmlns:fields/xmlns:type') #Retrieves Field Types
               field_type = String.new
                   custom_fields.zip(custom_field_types).each do |custom_fields_value,custom_field_types_value| #Zip Arrays into pair of field name and field type
                        field_type = replace_salesforce_types(custom_fields_value,custom_field_types_value,field_type) #Replace Salesforce Custom Field Types with Postgres Field Types             
                   end
                   create_table = "CREATE TABLE " + custom_object_value_str + " (id character(50) NOT NULL,isdeleted boolean,name character(80),createddate timestamp with time zone,createdbyid character(50),lastmodifieddate timestamp with time zone,lastmodifiedbyid character(50),systemmodstamp timestamp with time zone," + field_type + "salesforce_org_id character(255),CONSTRAINT " + custom_object_value_str + "_pkey PRIMARY KEY (id));"
                   create_index = "CREATE INDEX " + custom_object_value_str + "_name_sfid_idx ON " + custom_object_value_str + " USING btree (name, salesforce_org_id);"
                   conn.exec(create_table)
                   conn.exec(create_index)
           else
               next
           end                    
        end
      else #Algorithm For Altering the Table Schema  
        custom_object.each do |custom_object_value|    
           append_object = custom_object_value + ".object"
           custom_object_path = "./src/objects/" + append_object
           custom_object_value_str = ("mfiforce__" + custom_object_value).downcase
           if File.exists?(custom_object_path)
              doc = Nokogiri::XML(File.open(custom_object_path))
              custom_fields = doc.xpath('//xmlns:fields/xmlns:fullName')
              custom_field_types = doc.xpath('//xmlns:fields/xmlns:type')
                tables_list.each do |tables_list_values|
                tables_list_value_arr = tables_list_values.values_at('tablename')
                tables_list_value_str = tables_list_value_arr.map{|i| i.to_s}.join("")
                if (custom_object_value_str.eql?tables_list_value_str) #Compare Custom Objects With Postgres Tables 
                    $flag_object = 1
                    pg_tables_exist = "select column_name from information_schema.columns where table_name='" + tables_list_value_str + "'" 
                    pg_columns = conn.exec(pg_tables_exist) #Fetches List of coloumns in Postgres
                    alter_field_type = String.new
                    custom_fields.zip(custom_field_types).each do |custom_field_value,custom_field_types_value|
                        custom_field_value_str = "mfiforce__" + custom_field_value.text.downcase
                        custom_field_types_value_str = (custom_field_types_value.text).to_s 
                        alter_field_type = alter_replace_salesforce_types(custom_field_value,custom_field_types_value_str,alter_field_type) 
                        pg_columns.each do |pg_cloumn|
                          pg_columns_value = pg_cloumn.values_at('column_name')
                          pg_columns_value_str = pg_columns_value.map{|i| i.to_s}.join("")
                          if(custom_field_value_str.eql?pg_columns_value_str) #Compare Column names
                            $flag = 1 #flag becomes one if column does exist and breaks out of the loop
                            break
                          else
                            $flag = 0 #flag becomes zero if column does not exist
                          end    
                        end
                        if ($flag == 0)
                          alter_table = "ALTER TABLE " + custom_object_value_str + " ADD COLUMN " + alter_field_type    
                          conn.exec(alter_table) 
                        end
                    end
                    break    
                else
                    $flag_object = 0 # Becomes Zero If there is a new Custom Object
                end
                end
                if ($flag_object == 0)
                   field_type = String.new
                   custom_fields.zip(custom_field_types).each do |node,node_types|
                      field_type = replace_salesforce_types(node,node_types,field_type)    
                   end
                   create_table = "CREATE TABLE " + custom_object_value_str + " (id character(50) NOT NULL,isdeleted boolean,name character(80),createddate timestamp with time zone,createdbyid character(50),lastmodifieddate timestamp with time zone,lastmodifiedbyid character(50),systemmodstamp timestamp with time zone," + field_type + "salesforce_org_id character(255),CONSTRAINT " + custom_object_value_str + "_pkey PRIMARY KEY (id));"
                   create_index = "CREATE INDEX " + custom_object_value_str + "_name_sfid_idx ON " + custom_object_value_str + " USING btree (name, salesforce_org_id);"
                   conn.exec(create_table)
                   conn.exec(create_index)
                end     
           end
        end
        puts "Finished"    
   end
   
      time_utc = Time.now.to_s
      field_values = "'" + salesforceOrgId + "'," + "'" + time_utc + "'" 
      last_fetch_date_string = "insert into mfiforce__last_fetch_date_c(salesforce_org_id,lastfetchStartDate) values (" + field_values + ")"        
      conn.exec(last_fetch_date_string)
      #Logic For Fetching Data From Salesforce     
      custom_object.each do |custom_object_value|
           append_object = custom_object_value + ".object"
           custom_object_path = "./src/objects/" + append_object
           custom_object_value_str = ("mfiforce__" + custom_object_value).downcase
           if File.exists?(custom_object_path)
                $field_ret = String.new
                doc = Nokogiri::XML(File.open(custom_object_path))
                doc_profile = Nokogiri::XML(File.open("./src/profiles/Sys Admin.profile"))
                field_permissions_field_name = doc_profile.xpath('//xmlns:fieldPermissions/xmlns:field')
                field_permissions_readable = doc_profile.xpath('//xmlns:fieldPermissions/xmlns:readable')
                custom_fields = doc.xpath('//xmlns:fields/xmlns:fullName')
                custom_external_id = doc.xpath('//xmlns:fields/xmlns:externalId')
                custom_required = doc.xpath('//xmlns:fields/xmlns:required')
                custom_types = doc.xpath('//xmlns:fields/xmlns:type')
                custom_fields.zip(custom_external_id,custom_types).each do |custom_field_value,custom_external_id_value,custom_types_value|
                  if(custom_field_value.text == "Id__c")#Skip Coloumns with ID in MetaData
                    next
                  end
                  if (custom_external_id_value.text == "true")#Skip Coloumns with ExternaID in MetaData
                    next
                  end
                  if (custom_object_value_str == "mfiforce__amazonconfig__c" || custom_object_value_str == "mfiforce__org_parameters__c" || custom_object_value_str == "mfiforce__organization_parameters__c")
                    $field_ret = $field_ret + "," + "mfiforce__" + custom_field_value.text
                    next
                  end
                  custom_required.each do |custom_required_value| # Algorithm For determining Hidden Fields using Required and Field Permission Tags
                    custom_required_parent = custom_required_value.parent
                    custom_required_parent_field_name = custom_required_parent.first_element_child.text
                    if (custom_field_value.text == custom_required_parent_field_name)
                      if (custom_required_value.text == "false")
                        $flag_select_field = 0
                        break
                      else
                        $flag_select_field = 1
                      break
                      end  
                    else    
                      $flag_select_field = 0
                    end   
                  end
                if ($flag_select_field == 0)
                   field_permissions_field_name.zip(field_permissions_readable).each do |field_permissions_field_name_value,field_permissions_readable_value|
                    if ((custom_object_value + "." + custom_field_value.text == field_permissions_field_name_value.text) && (field_permissions_readable_value.text == "true"))
                      $flag_select_field = 1
                      break
                    end
                   end  
                end
                if (custom_types_value.text == "MasterDetail")
                    $flag_select_field = 1
                end 
                if ($flag_select_field == 1)                     
                  $field_ret = $field_ret + "," + "mfiforce__" + custom_field_value.text
                else
                  puts custom_field_value.text + " Hidden"
                end 
                end
                retrieve_query = "SELECT Id,CreatedById,LastModifiedById,CreatedDate,LastModifiedDate,IsDeleted,SystemModstamp,Name" + $field_ret + " FROM " + custom_object_value_str
                puts retrieve_query  
                importCO = ImportCustomObjects.new
                importCO.import(salesforceUsername,salesforcePasswordWithSecurity,custom_object_value_str,retrieve_query,conn,salesforceOrgId,whereClause)   
           end
      end
     end_time = Time.now.to_s 
     conn.exec("UPDATE mfiforce__last_fetch_date_c SET fetchstatus = 'SUCCESS',lastfetchEndDate = '" + end_time + "',error_description = 'Successfully Transferred Data to PG' where lastfetchStartdate = (select lastfetchStartDate from mfiforce__last_fetch_date_c order by lastfetchStartDate desc limit 1)")
    
    rescue Exception => e  
      end_time = Time.now.to_s
      message_exception = String.new
      message_exception = e.message + e.backtrace.inspect 
      update_error = "UPDATE mfiforce__last_fetch_date_c SET fetchstatus = 'ERROR',lastfetchEndDate = '" + end_time + "',error_description = '" + message_exception + "' where lastfetchStartdate = (select lastfetchStartDate from mfiforce__last_fetch_date_c order by lastfetchStartDate desc limit 1)"
      conn.exec(update_error)     
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('gaurav.singh@mfiflex.co.in','MFiFlex could not import data today. Error message: ' + e.message).deliver
    ensure
      conn.close
  end
  
end


