require 'salesforce_bulk'
require 'csv'
require 'Constants_unmanaged'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportLoanProductAccountingSetupUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getLoanProductAccountingSetupObjName,getLoanProductAccountingSetupQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getLoanProductAccountingSetupObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end