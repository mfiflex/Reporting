require 'salesforce_bulk'
require 'csv'
require 'Constants_unmanaged'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportLoanLossProvisioningSetupUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getLoanLossProvisioningObjName,getLoanLossProvisioningQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getLoanLossProvisioningObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end