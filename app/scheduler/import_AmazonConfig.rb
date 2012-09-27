require 'salesforce_bulk'
require 'csv'
require 'constants'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportAmazonConfig
  include MFiFlexConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getAmazonConfigObjName,getAmazonConfigQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getAmazonConfigObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end