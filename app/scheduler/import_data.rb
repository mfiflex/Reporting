require 'salesforce_bulk'
require 'csv'
require 'constants'
require 'pg'
require 'mailer'

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
      
      #Importing ImportAccountingPeriod..
      #importAccountingPeriod = ImportAccountingPeriod.new
      #importAccountingPeriod.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAccountingRuleHeader..
      importAccountingRuleHeader = ImportAccountingRuleHeader.new
      importAccountingRuleHeader.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAccountingRuleLine..
      importAccountingRuleLine = ImportAccountingRuleLine.new
      importAccountingRuleLine.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAccountingSegmentSetup..
      importAccountingSegmentSetup = ImportAccountingSegmentSetup.new
      importAccountingRuleLine.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAddress..
      importAddress = ImportAddress.new
      importAddress.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAmazonConfig..
      #importAmazonConfig = ImportAmazonConfig.new
      #importAmazonConfig.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAnnualBusinessCycle..
      importAnnualBusinessCycle = ImportAnnualBusinessCycle.new
      importAnnualBusinessCycle.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAnswer..
      importAnswer = ImportAnswer.new
      importAnswer.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportArchiveRun..
      importArchiveRun = ImportArchiveRun.new
      importArchiveRun.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing importBank..
      importBank = ImportBank.new
      importBank.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBatchProcessLog..
      importBatchProcessLog = ImportBatchProcessLog.new
      importBatchProcessLog.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing importBranchLoanProduct..
      importBranchLoanProduct = ImportBranchLoanProduct.new
      importBranchLoanProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBranchLocation..
      importBranchLocation = ImportBranchLocation.new
      importBranchLocation.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBranchSavingsProduct..
      importBranchSavingsProduct = ImportBranchSavingsProduct.new
      importBranchSavingsProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBusinessActivity..
      importBusinessActivity = ImportBusinessActivity.new
      importBusinessActivity.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBusinessEvent..
      importBusinessEvent = ImportBusinessEvent.new
      importBusinessEvent.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCheck..
      importCheck = ImportCheck.new
      importCheck.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportClientHistory..
      importClientHistory = ImportClientHistory.new
      importClientHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportClientIdentification..
      importClientIdentification = ImportClientIdentification.new
      importClientIdentification.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportClientTraining..
      importClientTraining = ImportClientTraining.new
      importClientTraining.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCollectionFee..
      importCollectionFee = ImportCollectionFee.new
      importCollectionFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCountries..
      importCountries = ImportCountries.new
      importCountries.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCurrency..
      importCurrency = ImportCurrency.new
      importCurrency.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDailyLoanAccrual..
      importDailyLoanAccrual = ImportDailyLoanAccrual.new
      importDailyLoanAccrual.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDayProcess..
      importDayProcess = ImportDayProcess.new
      importDayProcess.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDisbursalAdjustment..
      importDisbursalAdjustment = ImportDisbursalAdjustment.new
      importDisbursalAdjustment.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDueFee..
      importDueFee = ImportDueFee.new
      importDueFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDueFee..
      importEmploymentBusinessDetail = ImportEmploymentBusinessDetail.new
      importEmploymentBusinessDetail.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFailedLoanAccount..
      importFailedLoanAccount = ImportFailedLoanAccount.new
      importFailedLoanAccount.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFamilyDetails..
      importFamilyDetails = ImportFamilyDetails.new
      importFamilyDetails.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFamilyEmploymentDetails..
      importFamilyEmploymentDetails = ImportFamilyEmploymentDetails.new
      importFamilyEmploymentDetails.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFinancialEducation..
      importFinancialEducation = ImportFinancialEducation.new
      importFinancialEducation.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportGuarantorDetails..
      importGuarantorDetails = ImportGuarantorDetails.new
      importGuarantorDetails.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportHoliday..
      importHoliday = ImportHoliday.new
      importHoliday.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportHomeEvaluation..
      importHomeEvaluation = ImportHomeEvaluation.new
      importHomeEvaluation.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportInsuranceProduct..
      importInsuranceProduct = ImportInsuranceProduct.new
      importInsuranceProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportInterestOnOverduePayment..
      importInterestOnOverduePayment = ImportInterestOnOverduePayment.new
      importInterestOnOverduePayment.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportJournal..
      importJournal = ImportJournal.new
      importJournal.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportMFError..
      #importMFError = ImportMfError.new
      #importMFError.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportMFError..
      importMonthProcess = ImportMonthProcess.new
      importMonthProcess.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportOfficeName..
      #importOfficeName = ImportOfficeName.new
      #importOfficeName.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      
      #Importing ImportOverdueFee..
      importOverdueFee = ImportOverdueFee.new
      importOverdueFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPaidFee..
      importPaidFee = ImportPaidFee.new
      importPaidFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPaymentMode..
      importPaymentMode = ImportPaymentMode.new
      importPaymentMode.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPovertyLikelihoodChart..
      importPovertyLikelihoodChart = ImportPovertyLikelihoodChart.new
      importPovertyLikelihoodChart.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPPIHouseholdData..
      importPPIHouseholdData = ImportPPIHouseholdData.new
      importPPIHouseholdData.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPPIIndicator..
      importPPIIndicator = ImportPPIIndicator.new
      importPPIIndicator.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPPIChartCountryAndYear..
      #importPPIChartCountryAndYear = ImportPPIChartCountryAndYear.new
      #importPPIChartCountryAndYear.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportProductCategory..
      importProductCategory = ImportProductCategory.new
      importProductCategory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuestionJunction..
      importQuestionJunction = ImportQuestionJunction.new
      importQuestionJunction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuestionSet..
      importQuestionSet = ImportQuestionSet.new
      importQuestionSet.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuestion..
      importQuestion = ImportQuestion.new
      importQuestion.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuickLink..
      importQuickLink = ImportQuickLink.new
      importQuickLink.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportRecoveryOrder..
      importRecoveryOrder = ImportRecoveryOrder.new
      importRecoveryOrder.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportRepaymentSchedule..
      importRepaymentSchedule = ImportRepaymentSchedule.new
      importRepaymentSchedule.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportRepaymentTransactionAdjustment..
      importRepaymentTransactionAdjustment = ImportRepaymentTransactionAdjustment.new
      importRepaymentTransactionAdjustment.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportSalesIncomeEstimate..
      importSalesIncomeEstimate = ImportSalesIncomeEstimate.new
      importSalesIncomeEstimate.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportSavingsPaymentTransaction..
      importSavingsPaymentTransaction = ImportSavingsPaymentTransaction.new
      importSavingsPaymentTransaction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportScheduledJob..
      importScheduledJob = ImportScheduledJob.new
      importScheduledJob.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportScheduledQueries..
      importScheduledQueries = ImportScheduledQueries.new
      importScheduledQueries.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportSearch..
      importSearch = ImportSearch.new
      importSearch.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportStaff..
      importStaff = ImportStaff.new
      importStaff.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportValueSets..
      importValueSets = ImportValueSets.new
      importValueSets.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportValueSetValues..
      importValueSetValues = ImportValueSetValues.new
      importValueSetValues.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
    
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('gaurav.singh@mfiflex.co.in','MFiFlex could not import data today. Error message: ' + e.message).deliver
    ensure
      conn.close
  end
  
end
