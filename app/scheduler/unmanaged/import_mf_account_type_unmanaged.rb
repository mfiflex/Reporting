require 'salesforce_bulk'
require 'csv'
require 'Constants_Unmanaged'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportMfAccountTypeUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getMfAccountTypeObjName,getMfAccountTypeQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getMfAccountTypeObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end