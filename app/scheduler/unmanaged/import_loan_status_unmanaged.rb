require 'salesforce_bulk'
require 'csv'
require 'Constants_Unmanaged'
require 'connection_util'
require 'pg'
require "action_mailer"

class ImportLoanStatusUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getLoanStatusObjName,getLoanStatusQuery);
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getLoanStatusObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end