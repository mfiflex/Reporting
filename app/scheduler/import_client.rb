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
      insertScriptStr =  "insert into " + getClientObjName + "(" + headerStr + ") values (" + fieldStr + ")"
      # Try inserting: If it doesn't insert then try to update
      begin
        insertResult = conn.exec(insertScriptStr);
      rescue Exception => e  
        #logic to update
        updateStr = ""
        i = 0
          headerList.each do |hdr|
             puts client.field(i)
             if(client.field(i).nil? or client.field(i)=='')
               updateStr = updateStr + " " + hdr + " = NULL " 
             else
               updateStr = updateStr + " " + hdr + " = '" + client.field(i) + "'"
             end  
              
             i = i+1  
             if(headerList.size != i)
              updateStr = updateStr + ","  
             end
          end
          
          updateScriptStr = "update " + getClientObjName + " set " + updateStr + " where Id = '" + client.field(0) + "'"
          updateResult = conn.exec(updateScriptStr)  
      end       
    end
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import clients today. Error message: ' + e.message).deliver
  end
  
end
