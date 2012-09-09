require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'pg'

class ImportClientController < ApplicationController
    
  def importC
    config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))    
    salesforce = SalesforceBulk::Api.new('admin@30df.org','Merc1243HGRcayiE38dzluu4LkACcfOjy')
    
    # Query
    # res = salesforce.query(MFiFlexConstants::CENTER_OBJ_NAME,MFiFlexConstants::CENTER_OBJ_QUERY);
    res = salesforce.query("mfiforce__Client__c", "select id,
                          ownerid,
                          isdeleted,
                          name,
                          createddate,
                          mfiforce__group__c,
                          mfiforce__salutation__c,
                          mfiforce__first_name__c ,
                          mfiforce__middle_name__c ,
                          mfiforce__last_name__c ,
                          mfiforce__government_id__c ,
                          mfiforce__date_of_birth__c ,
                          mfiforce__gender__c,
                          mfiforce__marital_status__c,
                          mfiforce__number_of_children__c,
                          mfiforce__citizenship__c,
                          mfiforce__ethnicity__c,
                          mfiforce__education_level__c,
                          mfiforce__business_activity__c,
                          mfiforce__handicapped__c,
                          mfiforce__spouse_father_s_first_name__c ,
                          mfiforce__spouse_father_s_middle_name__c ,
                          mfiforce__spouse_father_s_last_name__c ,
                          mfiforce__spouse_or_father__c,
                          mfiforce__client_start_date__c ,
                          mfiforce__address_1__c ,
                          mfiforce__address_2__c ,
                          mfiforce__address_3__c ,
                          mfiforce__city__c,
                          mfiforce__zipcode__c,
                          mfiforce__telephone_no__c ,
                          mfiforce__notes__c ,
                          mfiforce__status__c,
                          mfiforce__loan_officer__c,
                          mfiforce__trained__c ,
                          mfiforce__office__c,
                          mfiforce__id_count__c,
                          mfiforce__country__c,
                          mfiforce__state__c,
                          mfiforce__vicinity__c ,
                          mfiforce__approval_date__c ,
                          mfiforce__fee_set__c,
                          mfiforce__total_fees_charged__c ,
                          mfiforce__fees_collected__c ,
                          mfiforce__religion__c ,
                          mfiforce__center__c,
                          mfiforce__home_town__c ,
                          mfiforce__district__c,
                          mfiforce__nominee__c,
                          mfiforce__clientcnt__c,
                          mfiforce__zone__c,
                          mfiforce__check_for_duplicates__c,
                          mfiforce__source_loan_officer__c,
                          mfiforce__current_loan_officer__c,
                          mfiforce__employment_business_details_count__c,
                          mfiforce__home_evaluation_count__c,
                          mfiforce__financial_education__c,
                          mfiforce__sales_income_estimate_count__c,
                          mfiforce__family_employment_details_count__c,
                          mfiforce__client_training__c,
                          mfiforce__ismember__c,
                          mfiforce__new_field__c,
                          mfiforce__isbioscanregistered__c
                          from mfiforce__client__c")

    @q_result = res.result.records
    
    #get Connection
    conn = PG.connect('localhost', '5432', '','','mfiforce', 'postgres','' )
    
    @q_result.each do |client|
      headerList = client.headers
      headerStr = headerList.map { |i| i.to_s }.join(",")
      
      fieldList = client.fields
      fieldStr = fieldList.map { |i| "'" + i.to_s + "'" }.join(",")
      
      fieldStr = fieldStr.gsub("''","null")
      @insertScriptStr =  "insert into mfiforce__client__c (" + headerStr + ") values (" + fieldStr + ")"
      insertResult = conn.exec(@insertScriptStr); 
      #insertRes = conn.exec('insert into mfiforce__client__c(id,name,isDeleted,createddate)
       #   values($1,$2,$3,$4)',
        #    [client.field(0),client.field(3),client.field(2),client.field(4)])  
    end
    #,$4,$5,$6,$7,$8,$9,$10,
    #$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,
    #$21,$22,$23,$24,$25,$26,$27,$28,$29,$30,
    #$31,$32,$33,$34,$35,$36,$37,$38,$39,$40,
    #$41,$42,$43,$44,$45,$46,$47,$48,$49,$50,
    #$51,$52,$53,$54,$55,$56,$57,$58,$59,$60,
    #$61,$62
    
    #client.field(1),client.field(2),client.field(3),client.field(4),client.field(5),client.field(6),client.field(7),client.field(8),client.field(9),client.field(10),
#client.field(11),client.field(12),client.field(13),client.field(14),client.field(15),client.field(16),client.field(17),client.field(18),client.field(19),client.field(20),
#client.field(21),client.field(22),client.field(23),client.field(24),client.field(25),client.field(26),client.field(27),client.field(28),client.field(29),client.field(30),
#client.field(31),client.field(32),client.field(33),client.field(34),client.field(35),client.field(36),client.field(37),client.field(38),client.field(39),client.field(40),
#client.field(41),client.field(42),client.field(43),client.field(44),client.field(45),client.field(46),client.field(47),client.field(48),client.field(49),client.field(50),
#client.field(51),client.field(52),client.field(53),client.field(54),client.field(55),client.field(56),client.field(57),client.field(58),client.field(59),client.field(60),
#client.field(61),client.field(62)
    
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
