require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'pg'
require "action_mailer"

class ImportSalesforceToPG
  include MFiFlexConstants
  include Databasedotcom::Rails::Controller
    
  def importEverything(salesforceUsername,salesforcePassword,salesforceOrgId)
    #Read config in the caller code
    config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))    
    #get Connection
    #conn = PG.connect('localhost', '5432', '','','mfiforce', 'postgres','' )
    databaseConfig =  Rails.configuration.database_configuration
    conn = PG.connect(databaseConfig[Rails.env]["host"], databaseConfig[Rails.env]["port"], '','',databaseConfig[Rails.env]["database"], databaseConfig[Rails.env]["username"],databaseConfig[Rails.env]["password"] )
    
    
    #Importing Clients..
    #importC.import('admin@30df.org','Merc1243HGRcayiE38dzluu4LkACcfOjy',conn)rake 
    importC = ImportClient.new
    importC.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing Groups..
    importG = ImportGroup.new
    importG.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
      
    #Importing Center..
    importCenter = ImportCenter.new
    importCenter.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanAccountHistory..
    importLHistory = ImportLoanAccountHistory.new
    importLHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanAccount..
    importLAcc = ImportLoanAccount.new
    importLAcc.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanApprovalPrerequisites..
    importLAppPreerq = ImportLoanApprovalPrerequisites.new
    importLAppPreerq.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanBalanceSSnapshot..
    importLBalSnapshot = ImportLoanBalanceSSnapshot.new
    importLBalSnapshot.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanDisbursalTransaction..
    importLDisTxn = ImportLoanDisbursalTransaction.new
    importLDisTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanLossProvisioningSetup..
    importLLPS = ImportLoanLossProvisioningSetup.new
    importLLPS.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)  
    
    #Importing ImportLoanPaymentCollection..
    importLPCollection = ImportLoanPaymentCollection.new
    importLPCollection.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanPaymentTransaction..
    importLPTxn = ImportLoanPaymentTransaction.new
    importLPTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanProductAccountingSetup..
    importLPAccountingSetup = ImportLoanProductAccountingSetup.new
    importLPAccountingSetup.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanProductCycle..
    importLPCycle = ImportLoanProductCycle.new
    importLPCycle.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanProduct..
    importLProduct = ImportLoanProduct.new
    importLProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanPurpose..
    importLPurpose = ImportLoanPurpose.new
    importLPurpose.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanPurpose..
    importLStatus = ImportLoanStatus.new
    importLStatus.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoanWriteOffTransaction..
    importLWOffTxn = ImportLoanWriteOffTransaction.new
    importLWOffTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    #Importing ImportLoansHistory..
    importLoansHistory = ImportLoansHistory.new
    importLoansHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId)
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import data today. Error message: ' + e.message).deliver
    ensure
      conn.close
  end
  
end
