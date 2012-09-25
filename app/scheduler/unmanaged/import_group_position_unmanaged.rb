require 'salesforce_bulk'
require 'csv'
require 'Constants_Unmanaged'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportGroupPositionUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getGroupPositionObjName,getGroupPositionQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getGroupPositionObjName,q_result,pgConn,salesforceOrgId)
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not query Group Position data today. Error message: ' + e.message).deliver
    
  end
  
end