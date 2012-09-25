require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportFamilyEmploymentDetails
  include MFiFlexConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getFamilyEmploymentDetailsObjName,getFamilyEmploymentDetailsQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getFamilyEmploymentDetailsObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end