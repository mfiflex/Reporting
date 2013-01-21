require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportFeeSet
  include MFiFlexConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    test = getFeeSetQuery+whereClause
    puts test
    res = salesforce.query(getFeeSetObjName,getFeeSetQuery+whereClause)
    
    q_result = res.result.records
    puts q_result[0]
    #Upsert into Postgres
    upsertRecords(getFeeSetObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end