require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'connection_util'
require 'pg'
require "action_mailer"

class ImportFee
  include MFiFlexConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getFeeObjName,getFeeQuery);
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getFeeObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end