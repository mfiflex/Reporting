require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'pg'
require 'mailer'

class ImportClientController < ApplicationController
  include MFiFlexConstants
    
  def importC
    config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))    
    salesforce = SalesforceBulk::Api.new('admin@30df.org','Merc12432v9GPaFCwqTHDoj4n5TnV0Vw9w')
    
    # Query
    # res = salesforce.query(MFiFlexConstants::CENTER_OBJ_NAME,MFiFlexConstants::CENTER_OBJ_QUERY)
    
    res = salesforce.query(getClientObjName,getClientQuery)
    
    @q_result = res.result.records
    
    #get Connection
    conn = PG.connect('localhost', '5432', '','','mfiforce', 'postgres','welcome' )
    
    @q_result.each do |client|
      headerList = client.headers
      headerStr = headerList.map { |i| i.to_s }.join(",")
      
      fieldList = client.fields
      fieldStr = fieldList.map { |i| "'" + i.to_s + "'" }.join(",")
      
      fieldStr = fieldStr.gsub("''","null")
      @insertScriptStr =  "insert into mfiforce__client__c (" + headerStr + ") values (" + fieldStr + ")"
      insertResult = conn.exec(@insertScriptStr) 
      #insertRes = conn.exec('insert into mfiforce__client__c(id,name,isDeleted,createddate)
      #   values($1,$2,$3,$4)',
      #    [client.field(0),client.field(3),client.field(2),client.field(4)])
      
    end
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      #UserMailer.deliver_contact('snehal.fulzele@mfiflex.com', 'Test it is Test!', 'Could not import clients today. Please contact MFiFlex.')
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import clients today. Error message: ' + e.message).deliver
  end
  
   def csv_client_import 
     config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))    
     salesforce = SalesforceBulk::Api.new('admin@30df.org','Merc1243HGRcayiE38dzluu4LkACcfOjy')
    
     # Query
     res = salesforce.query("mfiforce__Client__c", "select id, name from mfiforce__Client__c limit 100")
     @q_result = res.result.records.inspect
         
     @parsed_file=CSV.parse(@q_result)
     n=0
     @parsed_file.each  do |row|
     #c=CustomerInformation.new
     #.job_title=row[1]
     #c.first_name=row[2]
     #c.last_name=row[3]
     #if c.save
        #n=n+1
        #GC.start if n%50==0
      puts row[1]
      puts row[2]
     end
     flash.now[:message]="CSV Import Successful,  #{n} new records added to data base"
   end
end
