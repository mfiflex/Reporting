require 'salesforce_bulk'
require 'csv'
require 'constants_unmanaged'
require 'pg'
require 'action_mailer'
require_rel '../unmanaged'

class ImportUnmanagedSalesforceToPG
  include MFiFlexUnmanagedConstants
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
    importC = ImportClientUnmanaged.new
    importC.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Sept 13
    #Importing Groups..
    importG = ImportGroupUnmanaged.new
    importG.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
    #Importing Center..
    importCenter = ImportCenterUnmanaged.new
    importCenter.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanAccountHistory..
    importLHistory = ImportLoanAccountHistoryUnmanaged.new
    importLHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanAccount..
    importLAcc = ImportLoanAccountUnmanaged.new
    importLAcc.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanApprovalPrerequisites..
    importLAppPreerq = ImportLoanApprovalPrerequisitesUnmanaged.new
    importLAppPreerq.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanBalanceSSnapshot..
    #importLBalSnapshot = ImportLoanBalanceSSnapshotUnmanaged.new
    #importLBalSnapshot.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanDisbursalTransaction..
    importLDisTxn = ImportLoanDisbursalTransactionUnmanaged.new
    importLDisTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanLossProvisioningSetup..
    importLLPS = ImportLoanLossProvisioningSetupUnmanaged.new
    importLLPS.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)  
    
    #Importing ImportLoanPaymentCollection..
    importLPCollection = ImportLoanPaymentCollectionUnmanaged.new
    importLPCollection.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanPaymentTransaction..
    importLPTxn = ImportLoanPaymentTransactionUnmanaged.new
    importLPTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanProductAccountingSetup..
    importLPAccountingSetup = ImportLoanProductAccountingSetupUnmanaged.new
    importLPAccountingSetup.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanProductCycle..
    importLPCycle = ImportLoanProductCycleUnmanaged.new
    importLPCycle.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanProduct..
    importLProduct = ImportLoanProductUnmanaged.new
    importLProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanPurpose..
    importLPurpose = ImportLoanPurposeUnmanaged.new
    importLPurpose.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanPurpose..
    importLStatus = ImportLoanStatusUnmanaged.new
    importLStatus.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoanWriteOffTransaction..
    importLWOffTxn = ImportLoanWriteOffTransactionUnmanaged.new
    importLWOffTxn.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportLoansHistory..
    importLoansHistory = ImportLoansHistoryUnmanaged.new
    importLoansHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Sept 14th
    #Importing ImportFeeJunction..
    importFeeJunction = ImportFeeJunctionUnmanaged.new
    importFeeJunction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFeeSet..
    importFeeSet = ImportFeeSetUnmanaged.new
    importFeeSet.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFee..
    importFee = ImportFeeUnmanaged.new
    importFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFee..
    importFiscalYear = ImportFiscalYearUnmanaged.new
    importFiscalYear.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFunderPortfolio..
    importFunderPortfolio = ImportFunderPortfolioUnmanaged.new
    importFunderPortfolio.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportFunder..
    importFunder = ImportFunderUnmanaged.new
    importFunder.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportGroupPosition..
    importGroupPosition = ImportGroupPositionUnmanaged.new
    importGroupPosition.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportMeetingSchedule..
    importMeetingSchedule = ImportMeetingScheduleUnmanaged.new
    importMeetingSchedule.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportMfAccount..
    importMfAccount = ImportMfAccountUnmanaged.new
    importMfAccount.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportMfAccountType..
    importMfAccountType = ImportMfAccountTypeUnmanaged.new
    importMfAccountType.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsAccountInterest..
    importSavingsAccountInterest = ImportSavingsAccountInterestUnmanaged.new
    importSavingsAccountInterest.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsAccount..
    importSavingsAccount = ImportSavingsAccountUnmanaged.new
    importSavingsAccount.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsPaymentCollectionRecord..
    importSavingsPaymentCollectionRecord = ImportSavingsPaymentCollectionRecordUnmanaged.new
    importSavingsPaymentCollectionRecord.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsProductAccountingSetup..
    importSavingsProductAccountingSetup = ImportSavingsProductAccountingSetupUnmanaged.new
    importSavingsProductAccountingSetup.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsProduct..
    importSavingsProduct = ImportSavingsProductUnmanaged.new
    importSavingsProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportSavingsWithdrawalTransaction..
    importSavingsWithdrawalTransaction = ImportSavingsWithdrawalTransactionUnmanaged.new
    importSavingsWithdrawalTransaction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportTransactionEntry..
    importTransactionEntry= ImportTransactionEntryUnmanaged.new
    importTransactionEntry.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportTransactionSource..
    importTransactionSource = ImportTransactionSourceUnmanaged.new
    importTransactionSource.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportTransaction..
    importTransaction = ImportTransactionUnmanaged.new
    importTransaction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    #Importing ImportUserBranchInfo..
    importUserBranchInfo = ImportUserBranchInfoUnmanaged.new
    importUserBranchInfo.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('snehal.fulzele@gmail.com','MFiFlex could not import data today. Error message: ' + e.message).deliver
    ensure
      conn.close
  end
  
end
