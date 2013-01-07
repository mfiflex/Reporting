require 'salesforce_bulk'
require 'csv'
require 'constants_unmanaged'
require 'connection_util'
require 'pg'
require 'mailer'

class ImportPPIIndicatorUnmanaged
  include MFiFlexUnmanagedConstants
  include ConnectionUtil
    
  def import(salesforceUserName,salesforcePassword,pgConn,salesforceOrgId,whereClause)
    salesforce = SalesforceBulk::Api.new(salesforceUserName,salesforcePassword)
    
    # Query using BULK API
    res = salesforce.query(getPPIIndicatorObjName,getPPIIndicatorQuery+whereClause)
    
    q_result = res.result.records
    
    #Upsert into Postgres
    upsertRecords(getPPIIndicatorObjName,q_result,pgConn,salesforceOrgId)
    
  end
  
end