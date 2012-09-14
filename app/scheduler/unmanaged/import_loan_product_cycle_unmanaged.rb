require 'salesforce_bulk'
require 'csv'
require 'constants_unmanaged'
require 'connection_util'
require 'pg'
require "action_mailer"

class ImportLoanProductCycleUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getLoanProductCycleObjName,getLoanProductCycleQuery);
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getLoanProductCycleObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end