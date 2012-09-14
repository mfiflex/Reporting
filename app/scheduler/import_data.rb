require 'salesforce_bulk'
require 'csv'
require 'Constants'
require 'pg'
require "action_mailer"

class ImportSalesforceToPG
  include MFiFlexConstants
  include Databasedotcom::Rails::Controller
    
  def importEverything(salesforceUsername,salesforcePassword,salesforceOrgId,whereClause)
    #Read config in the caller code
    config = YAML.load_file(File.join(::Rails.root, 'config', 'databasedotcom.yml'))    
    #get Connection
    #conn = PG.connect('localhost', '5432', '','','mfiforce', 'postgres','' )
    databaseConfig =  Rails.configuration.database_configuration
    conn = PG.connect(databaseConfig[Rails.env]["host"], databaseConfig[Rails.env]["port"], '','',databaseConfig[Rails.env]["database"], databaseConfig[Rails.env]["username"],databaseConfig[Rails.env]["password"] )
    
    #Setp 12
    #Importing Clients..
    #importC.import('admin@30df.org','Merc1243HGRcayiE38dzluu4LkACcfOjy',conn)rake 
    importC = ImportClient.new
    importC.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Sept 13
    #Importing Groups..
    importG = ImportGroup.new
    importG.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
    #Importing Center..
    importCenter = ImportCenter.new
    importCenter.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanAccountHistory..
    importLHistory = ImportLoanAccountHistory.new
    importLHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanAccount..
    importLAcc = ImportLoanAccount.new
    importLAcc.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanApprovalPrerequisites..
    importLAppPreerq = ImportLoanApprovalPrerequisites.new
    importLAppPreerq.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanBalanceSSnapshot..
    importLBalSnapshot = ImportLoanBalanceSSnapshot.new
    importLBalSnapshot.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanDisbursalTransaction..
    importLDisTxn = ImportLoanDisbursalTransaction.new
    importLDisTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanLossProvisioningSetup..
    importLLPS = ImportLoanLossProvisioningSetup.new
    importLLPS.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)  
    
    #Importing ImportLoanPaymentCollection..
    importLPCollection = ImportLoanPaymentCollection.new
    importLPCollection.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanPaymentTransaction..
    importLPTxn = ImportLoanPaymentTransaction.new
    importLPTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanProductAccountingSetup..
    importLPAccountingSetup = ImportLoanProductAccountingSetup.new
    importLPAccountingSetup.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanProductCycle..
    importLPCycle = ImportLoanProductCycle.new
    importLPCycle.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanProduct..
    importLProduct = ImportLoanProduct.new
    importLProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanPurpose..
    importLPurpose = ImportLoanPurpose.new
    importLPurpose.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanPurpose..
    importLStatus = ImportLoanStatus.new
    importLStatus.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanWriteOffTransaction..
    importLWOffTxn = ImportLoanWriteOffTransaction.new
    importLWOffTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoansHistory..
    importLoansHistory = ImportLoansHistory.new
    importLoansHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Sept 14th
    #Importing ImportFeeJunction..
    importFeeJunction = ImportFeeJunction.new
    importFeeJunction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFeeSet..
    importFeeSet = ImportFeeSet.new
    importFeeSet.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFee..
    importFee = ImportFee.new
    importFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFee..
    importFiscalYear = ImportFiscalYear.new
    importFiscalYear.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFunderPortfolio..
    importFunderPortfolio = ImportFunderPortfolio.new
    importFunderPortfolio.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFunder..
    importFunder = ImportFunder.new
    importFunder.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportGroupPosition..
    importGroupPosition = ImportGroupPosition.new
    importGroupPosition.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportMeetingSchedule..
    importMeetingSchedule = ImportMeetingSchedule.new
    importMeetingSchedule.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportMfAccount..
    importMfAccount = ImportMfAccount.new
    importMfAccount.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportMfAccountType..
    importMfAccountType = ImportMfAccountType.new
    importMfAccountType.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsAccountInterest..
    importSavingsAccountInterest = ImportSavingsAccountInterest.new
    importSavingsAccountInterest.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsAccount..
    importSavingsAccount = ImportSavingsAccount.new
    importSavingsAccount.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsPaymentCollectionRecord..
    importSavingsPaymentCollectionRecord = ImportSavingsPaymentCollectionRecord.new
    importSavingsPaymentCollectionRecord.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsProductAccountingSetup..
    importSavingsProductAccountingSetup = ImportSavingsProductAccountingSetup.new
    importSavingsProductAccountingSetup.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsProduct..
    importSavingsProduct = ImportSavingsProduct.new
    importSavingsProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsWithdrawalTransaction..
    importSavingsWithdrawalTransaction = ImportSavingsWithdrawalTransaction.new
    importSavingsWithdrawalTransaction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportTransactionEntry..
    importTransactionEntry= ImportTransactionEntry.new
    importTransactionEntry.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportTransactionSource..
    importTransactionSource = ImportTransactionSource.new
    importTransactionSource.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportTransaction..
    importTransaction = ImportTransaction.new
    importTransaction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportUserBranchInfo..
    importUserBranchInfo = ImportUserBranchInfo.new
    importUserBranchInfo.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import data today. Error message: ' + e.message).deliver
    ensure
      conn.close
  end
  
end
