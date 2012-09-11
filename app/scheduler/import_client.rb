require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'pg'
require "action_mailer"

class ImportClient
  include MFiFlexConstants
    
  def import(salesforceUserName,salesforcePassword,pgConn)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query
    res = salesforce.query(getClientObjName,getClientQuery);
    
    @q_result = res.result.records
    
    #get Connection #PG.connect('localhost', '5432', '','','mfiforce', 'postgres','' )
    conn = pgConn 
    
    @q_result.each do |client|
      headerList = client.headers
      headerStr = headerList.map { |i| i.to_s }.join(",")
      
      fieldList = client.fields
      fieldStr = fieldList.map { |i| "'" + i.to_s + "'" }.join(",")
      
      fieldStr = fieldStr.gsub("''","null")
      @insertScriptStr =  "insert into mfiforce__client__c (" + headerStr + ") values (" + fieldStr + ")"
      insertResult = conn.exec(@insertScriptStr);       
    end
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import clients today. Error message: ' + e.message).deliver
  end
  
end
