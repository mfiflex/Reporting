require 'salesforce_bulk'
require 'csv'
require 'Constants_unmanaged'
require 'pg'
require 'mailer'
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
      
      #Importing ImportAccountingPeriod..
      #importAccountingPeriod = ImportAccountingPeriodUnmanaged.new
      #importAccountingPeriod.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAccountingRuleHeader..
      importAccountingRuleHeader = ImportAccountingRuleHeaderUnmanaged.new
      importAccountingRuleHeader.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAccountingRuleLine..
      importAccountingRuleLine = ImportAccountingRuleLineUnmanaged.new
      importAccountingRuleLine.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAccountingSegmentSetup..
      importAccountingSegmentSetup = ImportAccountingSegmentSetupUnmanaged.new
      importAccountingSegmentSetup.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAddress..
      importAddress = ImportAddressUnmanaged.new
      importAddress.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAmazonConfig..
      #importAmazonConfig = ImportAmazonConfigUnmanaged.new
      #importAmazonConfig.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAnnualBusinessCycle..
      importAnnualBusinessCycle = ImportAnnualBusinessCycleUnmanaged.new
      importAnnualBusinessCycle.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportAnswer..
      importAnswer = ImportAnswerUnmanaged.new
      importAnswer.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportArchiveRun..
      importArchiveRun = ImportArchiveRunUnmanaged.new
      importArchiveRun.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing importBank..
      importBank = ImportBankUnmanaged.new
      importBank.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBatchProcessLog..
      importBatchProcessLog = ImportBatchProcessLogUnmanaged.new
      importBatchProcessLog.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing importBranchLoanProduct..
      importBranchLoanProduct = ImportBranchLoanProductUnmanaged.new
      importBranchLoanProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBranchLocation..
      importBranchLocation = ImportBranchLocationUnmanaged.new
      importBranchLocation.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBranchSavingsProduct..
      importBranchSavingsProduct = ImportBranchSavingsProductUnmanaged.new
      importBranchSavingsProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBusinessActivity..
      importBusinessActivity = ImportBusinessActivityUnmanaged.new
      importBusinessActivity.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportBusinessEvent..
      importBusinessEvent = ImportBusinessEventUnmanaged.new
      importBusinessEvent.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCheck..
      importCheck = ImportCheckUnmanaged.new
      importCheck.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportClientHistory..
      importClientHistory = ImportClientHistoryUnmanaged.new
      importClientHistory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportClientIdentification..
      importClientIdentification = ImportClientIdentificationUnmanaged.new
      importClientIdentification.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportClientTraining..
      #importClientTraining = ImportClientTrainingUnmanaged.new
      #importClientTraining.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCollectionFee..
      importCollectionFee = ImportCollectionFeeUnmanaged.new
      importCollectionFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCountries..
      importCountries = ImportCountriesUnmanaged.new
      importCountries.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportCurrency..
      importCurrency = ImportCurrencyUnmanaged.new
      importCurrency.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDailyLoanAccrual..
      importDailyLoanAccrual = ImportDailyLoanAccrualUnmanaged.new
      importDailyLoanAccrual.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDayProcess..
      importDayProcess = ImportDayProcessUnmanaged.new
      importDayProcess.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDisbursalAdjustment..
      importDisbursalAdjustment = ImportDisbursalAdjustmentUnmanaged.new
      importDisbursalAdjustment.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDueFee..
      importDueFee = ImportDueFeeUnmanaged.new
      importDueFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportDueFee..
      importEmploymentBusinessDetail = ImportEmploymentBusinessDetailUnmanaged.new
      importEmploymentBusinessDetail.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFailedLoanAccount..
      importFailedLoanAccount = ImportFailedLoanAccountUnmanaged.new
      importFailedLoanAccount.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFamilyDetails..
      importFamilyDetails = ImportFamilyDetailsUnmanaged.new
      importFamilyDetails.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFamilyEmploymentDetails..
      importFamilyEmploymentDetails = ImportFamilyEmploymentDetailsUnmanaged.new
      importFamilyEmploymentDetails.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportFinancialEducation..
      importFinancialEducation = ImportFinancialEducationUnmanaged.new
      importFinancialEducation.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportGuarantorDetails..
      #importGuarantorDetails = ImportGuarantorDetailsUnmanaged.new
      #importGuarantorDetails.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportHoliday..
      importHoliday = ImportHolidayUnmanaged.new
      importHoliday.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportHomeEvaluation..
      importHomeEvaluation = ImportHomeEvaluationUnmanaged.new
      importHomeEvaluation.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportInsuranceProduct..
      importInsuranceProduct = ImportInsuranceProductUnmanaged.new
      importInsuranceProduct.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportInterestOnOverduePayment..
      importInterestOnOverduePayment = ImportInterestOnOverduePaymentUnmanaged.new
      importInterestOnOverduePayment.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportJournal..
      importJournal = ImportJournalUnmanaged.new
      importJournal.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportMFError..
      #importMFError = ImportMfErrorUnmanaged.new
      #importMFError.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportMFError..
      importMonthProcess = ImportMonthProcessUnmanaged.new
      importMonthProcess.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportOfficeName..
      #importOfficeName = ImportOfficeNameUnmanaged.new
      #importOfficeName.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      
      #Importing ImportOverdueFee..
      importOverdueFee = ImportOverdueFeeUnmanaged.new
      importOverdueFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPaidFee..
      importPaidFee = ImportPaidFeeUnmanaged.new
      importPaidFee.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPaymentMode..
      importPaymentMode = ImportPaymentModeUnmanaged.new
      importPaymentMode.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPovertyLikelihoodChart..
      importPovertyLikelihoodChart = ImportPovertyLikelihoodChartUnmanaged.new
      importPovertyLikelihoodChart.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPPIHouseholdData..
      importPPIHouseholdData = ImportPPIHouseholdDataUnmanaged.new
      importPPIHouseholdData.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPPIIndicator..
      importPPIIndicator = ImportPPIIndicatorUnmanaged.new
      importPPIIndicator.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportPPIChartCountryAndYear..
      #importPPIChartCountryAndYear = ImportPPIChartCountryAndYearUnmanaged.new
      #importPPIChartCountryAndYear.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportProductCategory..
      importProductCategory = ImportProductCategoryUnmanaged.new
      importProductCategory.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuestionJunction..
      importQuestionJunction = ImportQuestionJunctionUnmanaged.new
      importQuestionJunction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuestionSet..
      importQuestionSet = ImportQuestionSetUnmanaged.new
      importQuestionSet.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuestion..
      importQuestion = ImportQuestionUnmanaged.new
      importQuestion.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportQuickLink..
      importQuickLink = ImportQuickLinkUnmanaged.new
      importQuickLink.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportRecoveryOrder..
      importRecoveryOrder = ImportRecoveryOrderUnmanaged.new
      importRecoveryOrder.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportRepaymentSchedule..
      importRepaymentSchedule = ImportRepaymentScheduleUnmanaged.new
      importRepaymentSchedule.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportRepaymentTransactionAdjustment..
      importRepaymentTransactionAdjustment = ImportRepaymentTransactionAdjustmentUnmanaged.new
      importRepaymentTransactionAdjustment.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportSalesIncomeEstimate..
      importSalesIncomeEstimate = ImportSalesIncomeEstimateUnmanaged.new
      importSalesIncomeEstimate.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportSavingsPaymentTransaction..
      importSavingsPaymentTransaction = ImportSavingsPaymentTransactionUnmanaged.new
      importSavingsPaymentTransaction.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportScheduledJob..
      #importScheduledJob = ImportScheduledJobUnmanaged.new
      #importScheduledJob.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportScheduledQueries..
      #importScheduledQueries = ImportScheduledQueriesUnmanaged.new
      #importScheduledQueries.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportSearch..
      #importSearch = ImportSearchUnmanaged.new
      #importSearch.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportStaff..
      importStaff = ImportStaffUnmanaged.new
      importStaff.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportValueSets..
      importValueSets = ImportValueSetsUnmanaged.new
      importValueSets.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)
      
      #Importing ImportValueSetValues..
      importValueSetValues = ImportValueSetValuesUnmanaged.new
      importValueSetValues.import(salesforceUsername,salesforcePassword,conn,salesforceOrgId,whereClause)

    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect 
      Mailer.mailTo('gaurav.singh@mfiflex.co.in','MFiFlex could not import data today. Error message: ' + e.message).deliver
    ensure
      conn.close
  end
  
end
