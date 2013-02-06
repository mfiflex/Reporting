require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportCustomObjects
  include MFiFlexConstants
  include ConnectionUtil
      
  def import(salesforceUserName,salesforcePasswordWithSecurity,objName,objQuery,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePasswordWithSecurity)
    
    # Query using BULK API
    res = salesforce.query(objName,objQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(objName,q_result,pgConn,salesforceOrgId)
    
  end
  
end
