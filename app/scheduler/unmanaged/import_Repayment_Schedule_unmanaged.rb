require 'salesforce_bulk'
require 'csv'
require 'constants_unmanaged'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportRepaymentScheduleUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getRepaymentScheduleObjName,getRepaymentScheduleQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getRepaymentScheduleObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end