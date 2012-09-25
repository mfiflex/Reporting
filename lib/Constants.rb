module MFiFlexConstants
  #CLIENT_OBJ_="mfiforce__Client__c"
    def getClientObjName
      return "mfiforce__client__c"  
    end
  #CLIENT_QUERY
    def getClientQuery        
        clientQueryStr = "SELECT   Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Address_1__c, 
							mfiforce__Address_2__c, 
							mfiforce__Address_3__c, 
							mfiforce__Approval_Date__c, 
							mfiforce__Office__c, 
							mfiforce__Business_Activity__c, 
							mfiforce__Center__c, 
							mfiforce__Check_for_Duplicates__c, 
							mfiforce__Citizenship__c, 
							mfiforce__City__c, 
							mfiforce__Client_Start_Date__c, 
							mfiforce__Client_Training__c, 
							mfiforce__ClientCnt__c, 
							mfiforce__Country__c,  
							mfiforce__Current_Loan_Officer__c, 
							mfiforce__Date_of_Birth__c, 
							mfiforce__District__c, 
							mfiforce__Education_level__c, 
							mfiforce__Employment_Business_Details_Count__c, 
							mfiforce__Ethnicity__c, 
							mfiforce__Family_Employment_Details_Count__c, 
							mfiforce__Fee_Set__c, 
							mfiforce__Fees_Collected__c, 
							mfiforce__Financial_Education__c, 
							mfiforce__First___c, 
							mfiforce__Gender__c, 
							mfiforce__Government_ID__c, 
							mfiforce__Group__c, 
							mfiforce__Handicapped__c, 
							mfiforce__Home_Evaluation_Count__c, 
							mfiforce__Home_Town__c, 
							mfiforce__Id_Count__c,  
							mfiforce__Last___c, 
							mfiforce__Loan_Officer__c, 
							mfiforce__Marital_Status__c, 
							mfiforce__Middle___c, 
							mfiforce__New_Field__c, 
							mfiforce__Nominee__c, 
							mfiforce__Notes__c, 
							mfiforce__Number_of_children__c,  
							mfiforce__Religion__c, 
							mfiforce__Sales_Income_Estimate_Count__c, 
							mfiforce__Salutation__c, 
							mfiforce__Source_Loan_Officer__c, 
							mfiforce__Spouse_or_Father__c, 
							mfiforce__Spouse_Father_s_First___c, 
							mfiforce__Spouse_Father_s_Last___c, 
							mfiforce__Spouse_Father_s_Middle___c, 
							mfiforce__State__c, mfiforce__Status__c,  
							mfiforce__Telephone_No__c, 
							mfiforce__Total_Fees_Charged__c, 
							mfiforce__Trained__c, 
							mfiforce__Vicinity__c, 
							mfiforce__Zipcode__c, 
							mfiforce__Zone__c, 
							mfiforce__isBioScanRegistered__c, 
							mfiforce__isMember__c 
							FROM mfiforce__Client__c"
                                                        
          return clientQueryStr
      end
      
	#CRM OBJECT_ = "mfiforce__Accounting_Period__c"
		def getAccountingPeriodObjName
			return "mfiforce__Accounting_Period__c"  
		end
	#ACCOUNTING_PERIOD__QUERY
		def getAccountingPeriodQuery        
        accountingPeriodQueryStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__End_Date__c, 
							mfiforce__Start_Date__c, 
							mfiforce__Status__c, 
							mfiforce__Summarized__c
							FROM mfiforce__Accounting_Period__c" 
          return accountingPeriodQueryStr
      end
	#CRM OBJECT_ = "mfiforce__Accounting_Rule_Header__c"
		def getAccountingRuleHeaderObjName
			return "mfiforce__Accounting_Rule_Header__c"
		end
	#ACCOUNTING_RULE_HEADER_QUERY
		def getAccountingRuleHeaderQuery
			accountingRuleHeaderQueryStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											OwnerId,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											mfiforce__Active__c, 
											mfiforce__Business_Event__c, 
											mfiforce__System_Generated__c
											FROM mfiforce__Accounting_Rule_Header__c"
			return accountingRuleHeaderQueryStr
		end
	#CRM OBJECT_ = "mfiforce__Accounting_Rule_Line__c"
		def getAccountingRuleLineObjName
			return "mfiforce__Accounting_Rule_Line__c"
		end
	#ACCOUNTING_RULE_LINE_QUERY
		def getAccountingRuleLineQuery
			accountingRuleLineStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Accounting_Rule_Header__c, 
									mfiforce__Amount_Type__c, 
									mfiforce__Branch__c, 
									mfiforce__Credit_Account__c, 
									mfiforce__Credit_Subledger__c, 
									mfiforce__Debit_Account__c, 
									mfiforce__Debit_Subledger__c, 
									mfiforce__Fee__c, 
									mfiforce__Parameters__c
									FROM mfiforce__Accounting_Rule_Line__c"
			return accountingRuleLineStr
		end
	#CRM OBJECT_ = "mfiforce__Accounting_Segment_Setup__c"
		def getAccountingSegmentSetupObjName
			return "mfiforce__Accounting_Segment_Setup__c"
		end
	#ACCOUNTING_SEGMENT_SETUP_QUERY
		def getAccountingSegmentSetupQuery
			accountingSegmentSetupStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										OwnerId,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										mfiforce__Accounting_Segmentation__c, 
										mfiforce__Balancing_Segment_Number__c, 
										mfiforce__Delimiter__c, 
										mfiforce__Segment1__c, 
										mfiforce__Segment2__c, 
										mfiforce__Segment3__c, 
										mfiforce__Segment4__c, 
										mfiforce__Segment5__c, 
										mfiforce__Segment6__c, 
										mfiforce__Segment7__c
										FROM mfiforce__Accounting_Segment_Setup__c"
			return accountingSegmentSetupStr
		end
	#CRM OBJECT_ = "mfiforce__Address__c"
		def getAddressObjName
			return "mfiforce__Address__c"
		end
	#ADDRESS_QUERY
		def getAddressQuery
			addressStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Address_1__c, 
							mfiforce__Address_2__c, 
							mfiforce__Address_3__c, 
							mfiforce__Address_Date__c, 
							mfiforce__Address_Type__c, 
							mfiforce__City__c, 
							mfiforce__Landmark__c, 
							LastActivityDate, 
							mfiforce__Phone1__c, 
							mfiforce__Phone2__c, 
							mfiforce__PinCode__c, 
							mfiforce__State__c
							FROM mfiforce__Address__c"
			return addressStr 
		end
	#CRM OBJECT_ = "mfiforce__AmazonConfig__c"
		def getAmazonConfigObjName
			return "mfiforce__AmazonConfig__c"
		end
	#AMAZONCONFIG_QUERY
		def getAmazonConfigQuery
			amazonConfigStr = "SELECT  Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Key__c, 
								SetupOwnerId,
								mfiforce__Value__c 
								FROM mfiforce__AmazonConfig__c"
			return amazonConfigStr
		end
	#CRM OBJECT_ = "mfiforce__Annual_Business_Cycle__c"
		def getAnnualBusinessCycleObjName
			return "mfiforce__Annual_Business_Cycle__c"
		end
	#ANNUAL_BUSSINESS_CYCLE_QUERY
		def getAnnualBussinessCycleQuery
			annualBussinessCycleStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										OwnerId,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										LastActivityDate
										FROM mfiforce__Annual_Business_Cycle__c"
			return annualBussinessCycleStr
		end
	#CRM OBJECT_ ="mfiforce__Answer__c"
		def getAnswerObjName
			return "mfiforce__Answer__c"
		end
	#ANSWER_QUERY
		def geAnswerQuery
			answerStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Answer_Type__c, 
							mfiforce__Date_Answer__c, 
							mfiforce__Earned_Weight__c, 
							mfiforce__Free_Text_Answer__c, 
							mfiforce__Mutiselect_Answer__c, 
							mfiforce__PPI_Household_Data__c, 
							mfiforce__Question__c, 
							mfiforce__Question_Text__c,
							mfiforce__Single_Select_Answer__c,
							FROM mfiforce__Answer__c"
			return answerStr
		end
	#CRM OBJECT_ = "mfiforce__Archive_Run__c"
		def getArchiveRunObjName
			return "mfiforce__Archive_Run__c"
		end
	#ARCHIVE_RUN_QUERY
		def getArchiveRunQuery
			archiveRunStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Batch_Job___c, 
							mfiforce__Completed__c, 
							mfiforce__Run_Every_Units__c, 
							mfiforce__Result__c, 
							mfiforce__Results__c, 
							mfiforce__Run_Every__c, 
							mfiforce__Schedule_Status__c, 
							mfiforce__Scheduled_Queries__c, 
							mfiforce__Scheduled_To_Run__c, 
							mfiforce__Status__c, 
							mfiforce__Trigger_Batch_Run__c, 
							mfiforce__Trigger_Scheduler__c 
							FROM mfiforce__Archive_Run__c"
			return archiveRunStr
		end
	#CRM OBJECT_ ="mfiforce__Bank__c"
		def getBankObjName
			return "mfiforce__Bank__c"
		end
	#BANK_QUERY
		def getBankQuery
			bankStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Bank_Code__c, 
							mfiforce__Bank_Location__c, 
							FROM mfiforce__Bank__c"
			return bankStr
		end
	#CRM OBJECT_ = "mfiforce__Batch_Process_Log__c"
		def getBatchProcessLogObjName
			return "mfiforce__Batch_Process_Log__c"
		end
	#BATCH_PROCESS_LOG_QUERY
		def getBatchProcessLogQuery
			batchProcessLogStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Branch__c, 
									mfiforce__Date__c, 
									mfiforce__Message__c, 
									mfiforce__Origin__c, 
									mfiforce__Time__c, 
									mfiforce__Type__c 
									FROM mfiforce__Batch_Process_Log__c"
			return batchProcessLogStr
		end
	#CRM OBJECT_ = "mfiforce__Branch_Loan_Product__c"
		def getBranchLoanProductObjName
			return "mfiforce__Branch_Loan_Product__c"
		end
	#BRANCH_LOAN_PRODUCT_QUERY
		def getBranchLoanProductQuery
			branchLoanProductStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Branch__c, 
									mfiforce__Loan_Product__c
									FROM mfiforce__Branch_Loan_Product__c"
			return branchLoanProductStr
		end
	#CRM OBJECT_ = "mfiforce__Branch_Location__c"
		def getBranchLocationObjName
			return "mfiforce__Branch_Location__c"
		end
	#BRANCH_LOCATION_QUERY
		def getBranchLocationQuery
			branchLocationStr = "Select Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Zip_Code__c, 
								mfiforce__State__c, 
								mfiforce__Phone__c, 
								mfiforce__LOC_ID__c, 
								mfiforce__Email__c, 
								mfiforce__Country__c, 
								mfiforce__City__c, 
								mfiforce__Address_Line_3__c, 
								mfiforce__Address_Line_2__c, 
								mfiforce__Address_Line_1__c
								From mfiforce__Branch_Location__c"
			return branchLocationStr
		end
	#CRM OBJECT_ = "mfiforce__Branch_Savings_Product__c"
		def getBranchSavingsProductObjName
			return "mfiforce__Branch_Savings_Product__c"
		end
	#BRANCH_SAVINGS_PRODCUT_QUERY
		def getBrachSavingsProductQuery
			branchSavingsproductStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										OwnerId,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										mfiforce__Branch__c, 
										mfiforce__Savings_Product__c										 
										FROM mfiforce__Branch_Savings_Product__c"
			return branchSavingsproductStr
		end
	#CRM OBJECT_ = "mfiforce__Business_Activity__c"
		def getBusinessActivityObjName
			return "mfiforce__Business_Activity__c"
		end
	#BUSINESS_ACTIVITY_QUERY
		def getBusinessActivityQuery
			businessActivityStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name								 
									FROM mfiforce__Business_Activity__c"
			return businessActivityStr
		end
	#CRM OBJECT_ = "mfiforce__Business_Event__c"
		def getBusinessEventObjName
			return "mfiforce__Business_Event__c"
		end
	#BUSINESS_EVENT_QUERY
		def getBusinessEventQuery
			businessEventStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name
								FROM mfiforce__Business_Event__c"
			return businessEventStr
		end
	#CRM OBJECT_ = "mfiforce__Center__c"
		def getCenterObjName
			return "mfiforce__Center__c"
		end
	#CENTER_QUERY
		def getCenterQuery
			centerStr = "SELECT Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__Branch__c, 
						mfiforce__Center_Leader__c, 
						mfiforce__CenterCnt__c, 
						mfiforce__Current_Loan_Officer__c, 
						mfiforce__Loan_Officer__c, 
						mfiforce__Location__c, 
						mfiforce__Manager__c, 
						mfiforce__Meeting_Schedule__c, 
						mfiforce__Source_Loan_Officer__c
						FROM mfiforce__Center__c"
			return centerStr
		end
	#CRM OBJECT_ = "mfiforce__Check__c"
		def getCheckObjName
			return "mfiforce__Check__c"
		end
	#CHECK_QUERY
		def getCheckQuery
			checkStr = "SELECT Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__Bank__c, 
						mfiforce__Check_Amount__c, 
						mfiforce__Check_Date__c, 
						mfiforce__Check_Drawer__c, 
						mfiforce__Client__c, 
						mfiforce__Status__c
						FROM mfiforce__Check__c"
			return checkStr
		end
	#CRM OBJECT_ = "mfiforce__Client__c"
		def getClienObjName
			return "mfiforce__Client__c"
		end
	#CLIENT_QUERY
		def getClientQuery
			clientStr = "SELECT Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__Address_1__c, 
						mfiforce__Address_2__c, 
						mfiforce__Address_3__c, 
						mfiforce__Approval_Date__c, 
						mfiforce__Office__c, 
						mfiforce__Business_Activity__c, 
						mfiforce__Center__c, 
						mfiforce__Check_for_Duplicates__c, 
						mfiforce__Citizenship__c, 
						mfiforce__City__c, 
						mfiforce__Client_Start_Date__c, 
						mfiforce__Client_Training__c, 
						mfiforce__ClientCnt__c, 
						mfiforce__Country__c, 
						mfiforce__Current_Loan_Officer__c, 
						mfiforce__Date_of_Birth__c, 
						mfiforce__District__c, 
						mfiforce__Education_level__c, 
						mfiforce__Employment_Business_Details_Count__c, 
						mfiforce__Ethnicity__c, 
						mfiforce__Family_Employment_Details_Count__c, 
						mfiforce__Fee_Set__c, 
						mfiforce__Fees_Collected__c, 
						mfiforce__Financial_Education__c, 
						mfiforce__First___c, 
						mfiforce__Gender__c, 
						mfiforce__Government_ID__c, 
						mfiforce__Group__c, 
						mfiforce__Handicapped__c, 
						mfiforce__Home_Evaluation_Count__c, 
						mfiforce__Home_Town__c, 
						mfiforce__Id_Count__c, 
						mfiforce__Last___c, 
						mfiforce__Loan_Officer__c, 
						mfiforce__Marital_Status__c, 
						mfiforce__Middle___c, 
						mfiforce__New_Field__c, 
						mfiforce__Nominee__c, 
						mfiforce__Notes__c, 
						mfiforce__Number_of_children__c, 
						mfiforce__Religion__c, 
						mfiforce__Sales_Income_Estimate_Count__c, 
						mfiforce__Salutation__c, 
						mfiforce__Source_Loan_Officer__c, 
						mfiforce__Spouse_or_Father__c, 
						mfiforce__Spouse_Father_s_First___c, 
						mfiforce__Spouse_Father_s_Last___c, 
						mfiforce__Spouse_Father_s_Middle___c, 
						mfiforce__State__c, 
						mfiforce__Status__c, 
						mfiforce__Telephone_No__c, 
						mfiforce__Total_Fees_Charged__c, 
						mfiforce__Trained__c, 
						mfiforce__Vicinity__c, 
						mfiforce__Zipcode__c, 
						mfiforce__Zone__c, 
						mfiforce__isBioScanRegistered__c, 
						mfiforce__isMember__c 
						FROM mfiforce__Client__c"
			return clientStr
		end
	#CRM OBJECT_ = "mfiforce__Client_History__c"
		def getClientHistoryObjName
			return "mfiforce__Client_History__c"
		end
	#CLIENT_HISTORY_QUERY
		def getClientHistoryQuery
			clientHistoryStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Amount_of_loan__c, 
								mfiforce__Client__c, 
								mfiforce__Delinquent_Portfolio__c, 
								mfiforce__Interest_Paid__c,
								mfiforce__Loan_Cycle_Number__c, 
								mfiforce__Loan_Product__c, 
								mfiforce__MFI_Joining_Date__c, 
								mfiforce__Number_of_Meetings_Attended__c, 
								mfiforce__Number_of_Meetings_Missed__c, 
								mfiforce__Number_of_Missed_Payments__c, 
								mfiforce__Total_Amount_Paid__c, 
								mfiforce__Total_No_of_Active_Loans__c, 
								mfiforce__Total_Number_of_Payments__c, 
								mfiforce__Total_Savings__c 
								FROM mfiforce__Client_History__c"
			return clientHistoryStr
		end
	#CRM OBJECT_ = "mfiforce__Client_Identification__c"
		def getClientIdentificationObjName
			return "mfiforce__Client_Identification__c"
		end
	#CLIENT_IDENTIFICATION_QUERY
		def getClientIdentificationQuery
			clientIdentificationStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										OwnerId,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										mfiforce__Check_During_Dedup_Process__c, 
										mfiforce__Client__c, 
										mfiforce__Id__c, 
										mfiforce__Identification_Document__c, 
										mfiforce__Long_Description__c 
										FROM mfiforce__Client_Identification__c"
			return clientIdentificationStr
		end
	#CRM OBJECT_ = "mfiforce__Client_Training__c"
		def getClientTrainingObjName
			return "mfiforce__Client_Training__c"
		end
	#CLIENT_TRAINING_QUERY
		def getClientTrainingQuery
			clientTrainingStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Client_ID__c, 
								mfiforce__Feedback__c, 
								LastActivityDate, 
								mfiforce__No_of_Hours__c, 
								mfiforce__Trained_By__c, 
								mfiforce__Training_Date__c, 
								mfiforce__Training_Topic__c 
								FROM mfiforce__Client_Training__c"
			return clientTrainingStr
		end
	#CRM OBJECT_ = "mfiforce__Collection_Fee__c"
		def getCollectionFeeObjName
			return "mfiforce__Collection_Fee__c"
		end
	#COLLECTION_FEE_QUERY
		def getCollectionFeeQuery
			collectionFeeStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Collection_Fee_Amount__c, 
								mfiforce__Fee__c, 
								mfiforce__Loan_Payment_Collection_Record__c 
								FROM mfiforce__Collection_Fee__c"
			return collectionFeeStr
		end
	#CRM OBJECT_ = "mfiforce__Countries__c"
		def getCountriesObjName
			return "mfiforce__Countries__c"
		end
	#COUNTRIES_QUERY
		def getCountriesQuery
			countriesStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__CountryAndCode__c
							FROM mfiforce__Countries__c"
			return countriesStr
		end
	#CRM OBJECT_ = "mfiforce__Currency__c"
		def getCurrencyObjName
			return "mfiforce__Currency__c"
		end
	#CURRENCY_QUERY
		def getCurrencyQuery
			currencyStr = "SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name
							FROM mfiforce__Currency__c"
			return currencyStr
		end
	#CRM OBJECT_ = "mfiforce__Daily_Loan_Accrual__c"
		def getDailyLoanAccrualObjName
			return "mfiforce__Daily_Loan_Accrual__c"
		end
	#DAILY_LOAN_ACCRUAL_QUERY
		def getDailyLoanAccrualQuery
			dailyLoanAccrualStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Accrual_Date__c, 
									mfiforce__Accrued_Interest__c, 
									mfiforce__Eigth__c, 
									mfiforce__Eighteenth__c, 
									mfiforce__Eleventh__c, 
									mfiforce__Fifteenth__c, 
									mfiforce__Fifth__c, 
									mfiforce__First__c, 
									mfiforce__Fourteenth__c, 
									mfiforce__Fourth__c, 
									mfiforce__Interest_Overdue_Fees__c, 
									mfiforce__Interest_Overdue_Interest__c, 
									mfiforce__Interest_Overdue_Penalty__c, 
									mfiforce__Interest_Overdue_Principal__c, 
									LastActivityDate, 
									mfiforce__Loan_Account__c, 
									mfiforce__Month_Id__c, 
									mfiforce__Nineteenth__c, 
									mfiforce__Ninth__c, 
									mfiforce__Outstanding_Principal__c, 
									mfiforce__Posted__c, 
									mfiforce__Second__c, 
									mfiforce__Seventeenth__c, 
									mfiforce__Seventh__c, 
									mfiforce__Sixteenth__c, 
									mfiforce__Sixth__c, 
									mfiforce__Temp_Accrual_Date__c, 
									mfiforce__Tenth__c, 
									mfiforce__Third__c, 
									mfiforce__Thirteenth__c, 
									mfiforce__Thirtieth__c, 
									mfiforce__Thirty_First__c, 
									mfiforce__Twelfth__c, 
									mfiforce__Twentieth__c, 
									mfiforce__Twenty_Eight__c, 
									mfiforce__Twenty_Fifth__c, 
									mfiforce__Twenty_First__c, 
									mfiforce__Twenty_Fourth__c, 
									mfiforce__Twenty_Ninth__c, 
									mfiforce__Twenty_Second__c, 
									mfiforce__Twenty_Seventh__c, 
									mfiforce__Twenty_Sixth__c, 
									mfiforce__Twenty_Third__c 
									FROM mfiforce__Daily_Loan_Accrual__c"
			return dailyLoanAccrualStr
		end
	#CRM OBJECT_ = "mfiforce__Day_Process__c"
		def getDayProcessObjName
			return "mfiforce__Day_Process__c"
		end
	#DAY_PROCESS_QUERY
		def getDayProcessQuery
			dayProcessStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Accounts_Accrured__c, 
							mfiforce__Branch__c, 
							mfiforce__Date__c, 
							mfiforce__Day_Ended__c, 
							mfiforce__Day_Started__c, 
							mfiforce__Day_Status__c, 
							mfiforce__EOD_Finished__c, 
							mfiforce__EOD_Process_Started__c, 
							mfiforce__FD_Processing_Done__c, 
							mfiforce__Loan_Accounting_Done__c, 
							mfiforce__Loan_Collection_Chart_Generated__c, 
							mfiforce__Loan_History_Tracked__c, 
							mfiforce__SOD_Process_Started__c, 
							mfiforce__Savings_Accrual_Done__c, 
							mfiforce__Savings_Collection_Chart_Generated__c, 
							mfiforce__Status__c
							FROM mfiforce__Day_Process__c"
			return dayProcessStr
		end
	#CRM OBJECT_ = "mfiforce__Disbursal_Adjustment__c"
		def getDisbursalAdjustmentObjName
			return "mfiforce__Disbursal_Adjustment__c"
		end
	#DISBURSAL_ADJUSTMENT_QUERY
		def getDisbursalAdjustmentQuery
			disbursalAdjustmentStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										OwnerId,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										mfiforce__Adjustment_Txn_Date__c, 
										mfiforce__Cleared__c, 
										mfiforce__Loan_Disbursal_Transaction__c, 
										mfiforce__Receipt_ID__c, 
										mfiforce__Rejected__c
										FROM mfiforce__Disbursal_Adjustment__c"
			return disbursalAdjustmentStr
		end
	#CRM OBJECT_ = "mfiforce__Due_Fee__c"
		def getDueFeeObjName
			return "mfiforce__Due_Fee__c"
		end
	#DUE_FEE_QUERY
		def getDueFeeQuery
			dueFeeStr = "SELECT  Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__Due_Fee_Amount__c, 
						mfiforce__Fee__c, 
						mfiforce__Repayment_Schedule__c 
						FROM mfiforce__Due_Fee__c"
			return dueFeeStr
		end
	#CRM OBJECT_ = "mfiforce__Employment_Business_Detail__c"
		def getEmploymentBusinessDetailObjName
			return "mfiforce__Employment_Business_Detail__c"
		end
	#EMPLOYMENT_BUSINESS_DETAIL_QUERY
		def getEmploymentBusinessDetailQuery
			employmentBusinessDetailStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											OwnerId,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											mfiforce__Business_Activity__c, 
											mfiforce__Business_Address__c,
											mfiforce__Business_ship__c, 
											mfiforce__Business_Sector__c, 
											mfiforce__Business_Structure__c, 
											mfiforce__Business_Type__c, 
											mfiforce__Client__c, 
											LastActivityDate, 
											mfiforce__Loan_Account__c, 
											mfiforce__Number_of_years_in_Business__c, 
											mfiforce__Number_of_years_in_Service__c, 
											mfiforce__Service_Category__c, 
											mfiforce__Type_of_Employment__c 
											FROM mfiforce__Employment_Business_Detail__c"
			return employmentBusinessDetailStr
		end
	#CRM OBJECT_ = "mfiforce__Failed_Loan_Account__c"
		def	getFailedLoanAccountObjName 
			return "mfiforce__Failed_Loan_Account__c"
		end
	#FAILED_LOAN_ACCOUNT_QUERY
		def getFailedLoanAccountQuery
			failedLoanAccountStr = "SELECT  Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Failure_Reason__c, 
									mfiforce__Failure_Reason_Code__c, 
									mfiforce__Loan_Account__c, 
									mfiforce__Processing_Event__c, 
									FROM mfiforce__Failed_Loan_Account__c"
			return failedLoanAccountStr
		end
	#CRM OBJECT_ = "mfiforce__Family_Details__c"
		def getFamilyDetailsObjName
			return "mfiforce__Family_Details__c"
		end
	#FAMILY_DETAILS_QUERY
		def getFamilyDetailsQuery
			familyDetailsStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Client__c, 
								mfiforce__Household_Size_including_client__c, 
								mfiforce__Insurance__c, 
								LastActivityDate, 
								mfiforce__Loan_Account__c, 
								mfiforce__Medical_Treatment__c, 
								mfiforce__Monthly_Household_Expense__c, 
								mfiforce__Number_of_Children_15_Years__c, 
								mfiforce__Number_of_earning_members__c
								FROM mfiforce__Family_Details__c"
			return familyDetailsStr
		end
	#CRM OBJECT_ = "mfiforce__Family_Employment_Details__c"
		def getFamilyEmploymentDetailsObjName
			return "mfiforce__Family_Employment_Details__c"
		end
	#FAMILY_EMPLOYMENT_DETAILS_QUERY
		def getFamilyEmploymentDetailsQuery
			familyEmploymentDetailsStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											OwnerId,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											mfiforce__Client__c, 
											mfiforce__Family_Members___c, 
											LastActivityDate, 
											mfiforce__Loan_Account__c, 
											mfiforce__Relationship_with_Client__c, 
											mfiforce__Salary_Income__c, 
											mfiforce__Total_Contribution_from_family_members__c, 
											mfiforce__Type_of_Employment__c 
											FROM mfiforce__Family_Employment_Details__c"
			return familyEmploymentDetailsStr
		end
	#CRM OBJECT_ = "mfiforce__fee__c "
		def getFeeObjName
		  return "mfiforce__fee__c"
		end
	#FEE_QUERY
		def getFeeQuery
		  feeStr ="SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
						  mfiforce__Amount__c, 
						  mfiforce__Currency__c, 
						  mfiforce__Default_fees__c, 
						  mfiforce__Fee_Calculation_Method__c, 
						  mfiforce__Fee_Category__c, 
						  mfiforce__Income_Account__c, 
						  mfiforce__Maintenance_Fee_s_Frequency__c, 
						  mfiforce__Refundable__c, 
						  mfiforce__State__c, 
						  mfiforce__Suspended_Fee_Account__c, 
						  mfiforce__Time_of_charge__c 
						  FROM mfiforce__Fee__c"
		  return feeStr
		end
	#CRM OBJECT_ = "mfiforce__fee_junction__c"
		def getFeeJunctionObjName
		  return "mfiforce__fee_junction__c"
		end
	#FEE_JUNCTION_QUERY
		def getFeeJunctionQuery
		  feeJunctionStr ="select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Fee_Set__c,
							mfiforce__Fee__c
							From mfiforce__fee_junction__c"
		  return feeJunctionStr
		end
	#CRM OBJECT_ = "mfiforce__fee_set__c"
		def getFeeSetObjName
		  return "mfiforce__fee_set__c"
		end
	#FEE_SET_QUERY
		def getFeeSetQuery
		  feeSetStr = "SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Fee_Set_Category__c, 
							mfiforce__Number_of_Fees__c
							FROM mfiforce__Fee_Set__c"
			  return feeSetStr
		end
	#CRM OBJECT_ = "mfiforce__Financial_Education__c"
		def getFinancialEducationObjName
			return "mfiforce__Financial_Education__c"
		end
	#FINANCIAL_EDUCATION_QUERY
		def getFinancialEducationQuery
			financialEducationStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Attended_Financial_Education__c, 
									mfiforce__Client__c, 
									mfiforce__Date_Attended__c, 
									mfiforce__Interested_in_Financial_Education__c, 
									LastActivityDate, 
									mfiforce__Loan_Account__c, 
									mfiforce__Organization_Attended__c
									FROM mfiforce__Financial_Education__c"
			return financialEducationStr
		end
	#CRM OBJECT_ = "mfiforce__fiscal_year__c"
		def getFiscalYearObjName
		  return "mfiforce__fiscal_year__c"
		end
	#FISCAL_YEAR_QUERY
		def getFiscalYearQuery
		  fiscalYearStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
						  mfiforce__End_Date__c, 
						  mfiforce__FY_Closing_Balance__c, 
						  mfiforce__Fiscal_Year_Setting_Id__c, 
						  mfiforce__Start_Date__c, 
						  mfiforce__Status__c, 
						  FROM mfiforce__Fiscal_Year__c"
		  return fiscalYearStr
		end
	#CRM OBJECT_ = "mfiforce__funder__c"
		def getFunderObjName
		  return "mfiforce__funder__c"
		end
	#FUNDER_QUERY
		def getFunderQuery
		  funderStr = "SELECT  Id,  
				CreatedById,
				LastModifiedById,
				OwnerId,
				CreatedDate, 
				LastModifiedDate,
				IsDeleted, 
				SystemModstamp,
				Name,
				mfiforce__Address_1__c, 
				mfiforce__Address_2__c, 
				mfiforce__Address_3__c, 
				mfiforce__City__c, 
				mfiforce__Country__c, 
				mfiforce__Funder___c, 
				mfiforce__User__c 
				FROM mfiforce__Funder__c"
		  return funderStr
		end
	#CRM OBJECT_ = "mfiforce__funder_portfolio__c"
		def getFunderPortfolioObjName
		  return "mfiforce__funder_portfolio__c"
		end
	#FUNDER_PORTFOLIO_QUERY
		def getFunderPortfolioQery
		  funderPortfolioStr = "SELECT  Id,  
					CreatedById,
					LastModifiedById,
					OwnerId,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					  mfiforce__Amount_Funded__c, 
					  mfiforce__Amount_Utilized__c, 
					  mfiforce__Branch__c, 
					  mfiforce__Center__c, 
					  mfiforce__Funder__c
					  FROM mfiforce__Funder_Portfolio__c"
		  return funderPortfolioStr
		end
	#CRM OBJECT_ = "mfiforce__group__c"
		def getGroupObjName
		  return "mfiforce__group__c"
		end
	#GROUP_QUERY
		def getGroupQuery
		  groupStr = "SELECT Id,  
				CreatedById,
				LastModifiedById,
				OwnerId,
				CreatedDate, 
				LastModifiedDate,
				IsDeleted, 
				SystemModstamp,
				Name, 
				mfiforce__Address_Line_1__c, 
				mfiforce__Address_2__c, 
				mfiforce__Address_3__c, 
				mfiforce__Approval_Date__c, 
				mfiforce__Office__c, 
				mfiforce__Center__c, 
				mfiforce__City__c, 
				mfiforce__Country__c, 
				mfiforce__Current_Loan_Officer__c,  
				mfiforce__External_ID__c, 
				mfiforce__Fees_Collected__c, 
				mfiforce__GroupCnt__c, 
				mfiforce__Group_Fee_Set__c, 
				mfiforce__Group_Leader__c, 
				mfiforce__Group_Status__c, 
				mfiforce__Group_System_ID__c, 
				mfiforce__Last_Meeting_Date__c, 
				mfiforce__Assigned_LO__c, 
				mfiforce__Manager__c, 
				mfiforce__Maximum_number_of_persons__c, 
				mfiforce__Meeting_Schedule__c, 
				mfiforce__Minimum_number_of_persons__c, 
				mfiforce__Next_Meeting_Date__c, 
				mfiforce__Notes__c, 
				mfiforce__Question_Groups__c, 
				mfiforce__Source_Loan_Officer__c, 
				mfiforce__State__c, 
				mfiforce__Telephone_No__c, 
				mfiforce__Total_Fees_Charged__c, 
				mfiforce__Trained__c, 
				mfiforce__Trained_On__c, 
				mfiforce__Zipcode__c, 
				mfiforce__Zone__c 
				FROM mfiforce__Group__c"
		  return groupStr
		end
	#CRM OBJECT_ = "mfiforce__group_position__c "
		def getGroupPositionObjName
		  return "mfiforce__group_position__c"
		end
	#GROUP_POSITION_QUERY
		def getGroupPositionQuery
		  groupPositionStr = "SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							FROM mfiforce__Group_Position__c"
		  return groupPositionStr
		end
	#CRM OBJECT_ = "mfiforce__Guarantor_Details__c"
		def getGuarantorDetailsObjName
			return "mfiforce__Guarantor_Details__c"
		end
	#GUARANTOR_DETAILS_QUERY
		def getGuarantorDetailsQuery
			guarantorDetailsStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name, 
									mfiforce__Amount_Guaranteed__c, 
									mfiforce__Guarantee_Date__c, 
									mfiforce__Client_ID__c, 
									mfiforce__Loan_Account_ID__c
									FROM mfiforce__Guarantor_Details__c"
			return guarantorDetailsStr
		end
	#CRM OBJECT_ = "mfiforce__Holiday__c"
		def getHolidayObjName
			return "mfiforce__Holiday__c"
		end
	#HOLIDAY_QUERY
		def getHolidayQuery
			holidayStr = "SELECT  Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__Date__c, 
						mfiforce__Description__c, 
						mfiforce__Frequency__c, 
						mfiforce__Shift_Meeting__c
						FROM mfiforce__Holiday__c"
			return holidayStr
		end
	#CRM OBJECT_ = "mfiforce__Home_Evaluation__c"
		def getHomeEvaluationObjName
			return "mfiforce__Home_Evaluation__c"
		end
	#HOME_EVALUTATION_QUERY
		def getHomeEvaluationQuery
			homeEvaluationStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Building_Material__c, 
								mfiforce__Client__c, 
								mfiforce__Condition_of_House__c, 
								mfiforce__Home_Documentation__c, 
								mfiforce__Home_ship__c, 
								mfiforce__House_hold_assets__c, 
								LastActivityDate, 
								mfiforce__Loan_Account__c, 
								mfiforce__No_of_rooms__c, 
								mfiforce__Number_of_years_at_current_residence__c, 
								mfiforce__Services_Available__c								 
								FROM mfiforce__Home_Evaluation__c"
			return homeEvaluationStr
		end
	#CRM OBJECT_ = "mfiforce__Insurance_PRoduct__c"
		def getInsurancePRoductObjName
			return "mfiforce__Insurance_PRoduct__c"
		end
	#ISURANCE_PRODUCT_QUERY
		def getInsurancePRoductQuery
			insurancePRoductStr = "SELECT  Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Insurance_Company___c, 
									mfiforce__Insurance_End_Date__c, 
									mfiforce__Insurance_Fee_Set__c, 
									mfiforce__Insurance_Policy_Number__c, 
									mfiforce__Insurance_Start_Date__c, 
									mfiforce__Loan_Product__c
									FROM mfiforce__Insurance_PRoduct__c"
			return insurancePRoductStr
		end
	#CRM OBJECT_ = "mfiforce__Interest_On_Overdue_Payment__c"
		def getInterestOnOverduePaymentObjName
			return "mfiforce__Interest_On_Overdue_Payment__c"
		end
	#INTEREST_ON_OVERDUE_PAYMENT_QUERY
		def getInterestOnOverduePaymentQuery
			interestOnOverduePaymentStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											OwnerId,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											mfiforce__Amount__c, 
											LastActivityDate, 
											mfiforce__Loan_Account__c, 
											mfiforce__Posted__c, 
											mfiforce__Transaction_Date__c 
											FROM mfiforce__Interest_On_Overdue_Payment__c"
			return interestOnOverduePaymentStr
		end
	#CRM OBJECT_ = "mfiforce__Journal__c"
		def getJournalObjName
			return "mfiforce__Journal__c"
		end
	#JOURNAL_QUERY
		def getJournalQuery
			journalStr = "SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Description__c 
							FROM mfiforce__Journal__c"
			return journalStr
		end
	#CRM OBJECT_ = "mfiforce__loan_account__c"
		def getLoanAccountObjName
		  return "mfiforce__loan_account__c"
		end
	#LOANACCOUNT_OBJ_QUERY
		def getLoanAccountQuery
		  loanAccountQueryStr="Select  Id,  
					CreatedById,
					LastModifiedById,
					OwnerId,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					mfiforce__is_rescheduled__c,
					mfiforce__new_field_3__c,
					mfiforce__average_monthly_income__c,
					mfiforce__group__c,
					mfiforce__co_applicant__c,
					mfiforce__guarantor__c,
					mfiforce__current_loan_officer__c,
					mfiforce__source_loan_officer__c,
					mfiforce__account_type__c,
					mfiforce__savings_product__c,
					mfiforce__savings_account__c,
					mfiforce__closed_date__c,
					mfiforce__first_installment_date__c,
					mfiforce__next_installment_date__c,
					mfiforce__last_installment_date__c,
					mfiforce__previous_installment_date__c,
					mfiforce__aging__c,
					mfiforce__funder__c,
					mfiforce__application_date__c,
					mfiforce__loancnt__c,
					mfiforce__pay_off_amount_as_of_today__c,
					mfiforce__next_repayment_amount_as_of_today__c,
					mfiforce__overdue_amount_as_of_today__c,
					mfiforce__interest_on_overdue_suspended__c,
					mfiforce__fees_suspended__c,
					mfiforce__interest_suspended__c,
					mfiforce__uncleared_written_off_amount__c,
					mfiforce__uncleared_repayment_amount__c,
					mfiforce__uncleared_disbursal_amount__c,
					mfiforce__frequency_of_loan_payment__c,
					mfiforce__expected_repayment_start_date__c,
					mfiforce__repayment_tied_to_meeting_schedule__c,
					mfiforce__interest_on_overdue_paid__c,
					mfiforce__expected_disbursal_date__c,
					mfiforce__branch__c,
					mfiforce__loan_cycle_count__c,
					mfiforce__total_overdue_fees__c,
					mfiforce__suspended__c,
					mfiforce__fee_accrued__c,
					mfiforce__repayments_count__c,
					mfiforce__interest_accrued_not_due__c,
					mfiforce__total_amount_paid__c,
					mfiforce__total_amount_remaining__c,
					mfiforce__loan_status__c,
					mfiforce__fees_remaining__c,
					mfiforce__income_suspended__c,
					mfiforce__interest_on_total_overdue__c,
					mfiforce__interest_calculation_method__c,
					mfiforce__repayment_procedure__c,
					mfiforce__fee_set__c,
					mfiforce__overdue_interest_rate__c,
					mfiforce__penalty_remaining__c,
					mfiforce__number_of_days_overdue__c,
					mfiforce__total_amount_overdue__c,
					mfiforce__overdue_principal__c,
					mfiforce__overdue_penalty__c,
					mfiforce__interest_remaining__c,
					mfiforce__principal_remaining__c,
					mfiforce__overdue_interest__c,
					mfiforce__penalty_paid__c,
					mfiforce__fees_paid__c,
					mfiforce__interest_paid__c,
					mfiforce__principal_paid__c,
					mfiforce__collateral_notes__c,
					mfiforce__collateral_type__c,
					mfiforce__approval_date__c,
					mfiforce__grace_period_for_repayments__c,
					mfiforce__disbursal_date__c,
					mfiforce__number_of_installments__c,
					mfiforce__interest_rate__c,
					mfiforce__loan_amount__c,
					mfiforce__loan_product___c,
					mfiforce__loan_purpose__c,
					mfiforce__client__c
					From mfiforce__Loan_Account__c"
			return loanAccountQueryStr
		end
	#CRM OBJECT_ = "mfiforce__loan_account_history__c"
		def getLoanAccountHistoryObjName
		  return "mfiforce__loan_account_history__c"
		end
	#LOANACCOUNTHISTORY_OBJ_QUERY
		def getLoanAccountHistoryQuery
		  loanAccountHistoryStr="Select Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__loan_purpose__c,
						mfiforce__client__c,
						mfiforce__aging__c,
						mfiforce__previous_installment_date__c,
						mfiforce__next_installment_date__c,
						mfiforce__last_installment_date__c,
						mfiforce__first_installment_date__c,
						mfiforce__interest_on_total_overdue__c,
						mfiforce__fees_overdue__c,
						mfiforce__principal_overdue__c,
						mfiforce__interest_overdue__c,
						mfiforce__fees_remaining__c,
						mfiforce__interest_remaining__c,
						mfiforce__closed_date__c,
						mfiforce__loan_cycle_number__c,
						mfiforce__loan_product__c,
						mfiforce__date__c,
						mfiforce__loan_officer__c,
						mfiforce__branch__c,
						mfiforce__loan_account__c
						From mfiforce__loan_account_history__c"
		  return loanAccountHistoryStr
		end
	#CRM OBJECT_ = "mfiforce__loan_approval_prerequisites__c"
		def getLoanApprovalPrerequisitedObjName
		  return "mfiforce__loan_approval_prerequisites__c"
		end
	#LOAN_APPROVAL_PREREQUISITES_OBJ_QUERY
		def getLoanApprovalPrerequisitedQuery
		  loanApprovalPrerequisitedStr ="Select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__is_training_required__c,
							mfiforce__minimum_savings_balance__c,
							mfiforce__track_ratios__c,
							mfiforce__track_balance_sheet__c,
							mfiforce__track_cash_flow__c,
							mfiforce__track_summary_of_income__c,
							mfiforce__track_family_employment_details__c,
							mfiforce__track_other_income__c,
							mfiforce__track_sales_by_product_gross_margin__c,
							mfiforce__track_sales_income_estimate__c,
							mfiforce__track_financial_education__c,
							mfiforce__track_savings_history__c,
							mfiforce__track_home_evaluation__c,
							mfiforce__track_family_details__c,
							mfiforce__track_employment_business_details__c,
							mfiforce__use_sum_of_all_deposits__c,
							mfiforce__minimum_number_of_deposits__c,
							mfiforce__minimum_waiting_time_for_loan__c,
							mfiforce__loan_product__c,
							From mfiforce__loan_approval_prerequisites__c"
		  return loanApprovalPrerequisitedStr
		end
	#CRM OBJECT_ = "mfiforce__loan_balance_s_snapshot__c"
		def getLoanBalanceSSnapshotObjName
		  return "mfiforce__loan_balance_s_snapshot__c"
		end
	#LOAN_BALANCE_S_SNAPSHOT_QUERY
		def getLoanBalanceSSnapshotQuery
		  loanBalanceSSnapshotStr="Select Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__total_fees_overdue__c,
						mfiforce__principal_overdue__c,
						mfiforce__interest_overdue__c,
						mfiforce__fees_remaining__c,
						mfiforce__interest_remaining__c,
						mfiforce__principal_remaining__c,
						mfiforce__fees_paid__c,
						mfiforce__penalty_paid__c,
						mfiforce__interest_paid__c,
						mfiforce__principal_paid__c,
						mfiforce__loan_payment_transaction__c
					  From mfiforce__loan_balance_s_snapshot__c"
		  return loanBalanceSSnapshotStr
		end
	#CRM OBJECT_ = "mfiforce__loan_disbursal_transaction__c"
		def getloanDisbursalTransactionObjName
		  return "mfiforce__loan_disbursal_transaction__c"
		end
	#LOAN_DISBURSAL_TRANSACTION_QUERY
		def getloanDisbursalTransactionQuery
		  loanDisbursalTransactionStr = "Select Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__reversed__c,
						mfiforce__rejected__c,
						mfiforce__cleared__c,
						mfiforce__mode_of_payment__c,
						mfiforce__receipt_id__c,
						mfiforce__disbursal_date__c,
						mfiforce__loan_account__c,
						From mfiforce__loan_disbursal_transaction__c"
		  return loanDisbursalTransactionStr
		end
	#CRM OBJECT_ = "mfiforce__loan_loss_provisioning_setup__c"
		def getLoanLossProvisioningObjName
		  return "mfiforce__loan_loss_provisioning_setup__c"
		end
	#LOAN_LOSS_PROVISIONING_QUERY
		def getLoanLossProvisioningQuery
		  loanLossProvisioningStr = "Select Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
					  mfiforce__loan_product__c,
					  mfiforce__provision_percentage__c,
					  mfiforce__class__c
					  From mfiforce__loan_loss_provisioning_setup__c"
		  return loanLossProvisioningStr
		end
	#CRM OBJECT_ = "mfiforce__loan_payment_collection__c"
		def getLoanPaymentCollectionObjName
		  return "mfiforce__loan_payment_collection__c"
		end
	#LOAN_PAYMENT_COLLECTION_QUERY 
		def getLoanPaymentCollectionQuery
		  loanPaymentCollectionStr ="Select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
						  mfiforce__id__c,
						  mfiforce__net_total_due_fees__c,
						  mfiforce__attendance__c,
						  mfiforce__interest_on_total_overdue__c,
						  mfiforce__overdue_principal__c,
						  mfiforce__overdue_penalty__c,
						  mfiforce__overdue_fees__c,
						  mfiforce__overdue_interest__c,
						  mfiforce__payment_collected__c,
						  mfiforce__actual_collected_amount__c,
						  mfiforce__loan_account__c,
						  mfiforce__client__c,
						  mfiforce__total_collection_amount__c,
						  mfiforce__due_penalty__c,
						  mfiforce__due_fees__c,
						  mfiforce__due_principal__c,
						  mfiforce__due_interest__c,
						  mfiforce__collection_date__c,
						  mfiforce__repayment_schedule__c
						  From mfiforce__loan_payment_collection__c"
		  return loanPaymentCollectionStr
		end
	#CRM OBJECT_ = "mfiforce__loan_payment_transaction__c"
		def getLoanPaymentTransactionObjName
		  return "mfiforce__loan_payment_transaction__c"
		end
	#LOAN_PAYMENT_TRANSACTION_QUERY
		def getLoanPaymentTransactionQuery
		  loanPaymentTransactionObjNameStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							  mfiforce__check__c,
							  mfiforce__rejected__c,
							  mfiforce__write_off_recovery_payment__c,
							  mfiforce__cleared__c,
							  mfiforce__payment_mode__c,
							  mfiforce__missed_loan_installment__c,
							  mfiforce__early_total_repayment_of_the_loan__c,
							  mfiforce__early_payment__c,
							  mfiforce__partial_payment_del__c,
							  mfiforce__loan_account__c,
							  mfiforce__receipt_date__c,
							  mfiforce__receipt_id__c,
							  mfiforce__transaction_amount__c,
							  mfiforce__transaction_date__c
							  From mfiforce__loan_payment_transaction__c"
		  return loanPaymentTransactionObjNameStr
		end
	#CRM OBJECT_ = "mfiforce__loan_product__c"
		def getLoanProductObjName
		  return "mfiforce__loan_product__c"
		end
	#LOAN_PRODUCT_QUERY
		def getLoanProductQuery
		  loanProductStr="Select Id,  
					CreatedById,
					LastModifiedById,
					OwnerId,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					mfiforce__is_sub_product__c,
					mfiforce__parent_loan_product__c,
					mfiforce__number_of_prereqs__c,
					mfiforce__savings_product__c,
					mfiforce__last_month_provision__c,
					mfiforce__holiday_shift__c,
					mfiforce__general_rounding_mode__c,
					mfiforce__final_rounding_mode__c,
					mfiforce__final_rounding_precision__c,
					mfiforce__accrue_income_on_suspended_account__c,
					mfiforce__loan_product_type__c,
					mfiforce__max_loan_cycle_number__c,
					mfiforce__loan_cycle_setup__c,
					mfiforce__cash_based_accounting__c,
					mfiforce__initial_rounding_precision__c,
					mfiforce__product_write_off_recovery_account__c,
					mfiforce__product_loan_loss_provision_account__c,
					mfiforce__product_suspended_interest_account__c,
					mfiforce__product_overdue_interest_account__c,
					mfiforce__product_interest_income_account__c,
					mfiforce__product_loan_control_account__c,
					mfiforce__initial_rounding_mode__c,
					mfiforce__digits_after_decimals__c,
					mfiforce__accrual_based_accounting__c,
					mfiforce__max_overdue_interest_rate__c,
					mfiforce__min_overdue_interest_rate__c,
					mfiforce__approval_date__c,
					mfiforce__status__c,
					mfiforce__fee_set__c,
					mfiforce__days_in_a_year__c,
					mfiforce__funder__c,
					mfiforce__frequency_of_loan_payment__c,
					mfiforce__repayment_procedure__c,
					mfiforce__interest_calculation_method__c,
					mfiforce__compare_with_cash_flow__c,
					mfiforce__minimum_installment_amount__c,
					mfiforce__maximum_gap_between_installments__c,
					mfiforce__minimum_gap_between_installments__c,
					mfiforce__product_int_on_overdue_income_acc__c,
					mfiforce__currency__c,
					mfiforce__product_suspended_int_on_overdue_acc__c,
					mfiforce__grace_period_duration__c,
					mfiforce__can_waive_interest_on_prepaid_loan__c,
					mfiforce__default_overdue_interest_rate__c,
					mfiforce__default_interest_rate__c,
					mfiforce__min_interest_rate__c,
					mfiforce__max_interest_rate__c,
					mfiforce__interest_rate_type__c,
					mfiforce__default_number_of_installments__c,
					mfiforce__max_number_of_installments__c,
					mfiforce__min_number_of_installments__c,
					mfiforce__product_loan_loss_reserve_account__c,
					mfiforce__max_loan_amount__c,
					mfiforce__min_loan_amount__c,
					mfiforce__loan_product_code__c
					From mfiforce__loan_product__c"
		  return loanProductStr
		end
	#CRM OBJECT_ = "mfiforce__loan_product_accounting_setup__c"
		def getLoanProductAccountingSetupObjName
		  return "mfiforce__loan_product_accounting_setup__c"
		end
	#LOAN_PRODUCT_ACCOUNTING_SETUP_QUERY
		def getLoanProductAccountingSetupQuery
		  loanProductAccountingSetupStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__default_rule__c,
							mfiforce__loan_product__c,
							mfiforce__user_defined_rule__c,
							mfiforce__use_default_setup__c,
							mfiforce__business_event__c
							From mfiforce__loan_product_accounting_setup__c"
		  return loanProductAccountingSetupStr
		end
	#CRM OBJECT_ = "mfiforce__loan_product_cycle__c"
		def getLoanProductCycleObjName
		  return "mfiforce__loan_product_cycle__c"
		end
	#LOAN_PRODUCT_CYCLE_QUERY
		def getLoanProductCycleQuery
		  loanProductCycleStr = "Select Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__fee_set__c,
						mfiforce__default_overdue_interest_rate__c,
						mfiforce__default_number_of_installments__c,
						mfiforce__default_interest_rate__c,
						mfiforce__min_loan_amount__c,
						mfiforce__cycle_number__c,
						mfiforce__loan_product__c,
						mfiforce__minimum_installment_amount__c,
						mfiforce__minimum_gap_between_installments__c,
						mfiforce__min_overdue_interest_rate__c,
						mfiforce__max_overdue_interest_rate__c,
						mfiforce__min_number_of_installments__c,
						mfiforce__max_number_of_installments__c,
						mfiforce__max_loan_amount__c,
						mfiforce__min_interest_rate__c,
						mfiforce__max_interest_rate__c,
						mfiforce__maximum_gap_between_installments__c
						From mfiforce__loan_product_cycle__c"
		  return loanProductCycleStr
		end
	#CRM OBJECT_ = "mfiforce__loan_purpose__c"
		def getLoanPurposeObjName
		  return "mfiforce__loan_purpose__c"
		end
	#LOAN_PURPOSE_QUERY
		def getLoanPurposeQuery
		  loanPurposeStr = "Select Id,  
					CreatedById,
					LastModifiedById,
					OwnerId,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					mfiforce__description__c,
					mfiforce__loan_purpose_code__c
					From mfiforce__loan_purpose__c"
		  return loanPurposeStr
		end
	#CRM OBJECT_ = "mfiforce__loan_status__c"
		def getLoanStatusObjName
		  return "mfiforce__loan_status__c"
		end
	#LOAN_STATUS_QUERY
		def getLoanStatusQuery
		  loanStatusStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__description__c
							From mfiforce__loan_status__c"
		  return loanStatusStr
		end
	#CRM OBJECT_ = "mfiforce__loan_write_off_transaction__c"
		def getLoanWriteOffTransactionObjName
		  return "mfiforce__loan_write_off_transaction__c"
		end
	#LOAN_WRITE_OFF_TRANSACTION_QUERY
		def getLoanWriteOffTransactionQuery
		  loanWriteOffTransactionStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__fees_remaining__c,
							mfiforce__rejected__c,
							mfiforce__cleared__c,
							mfiforce__receipt_id__c,
							mfiforce__transaction_date__c,
							mfiforce__total_amount_remaining__c,
							mfiforce__loan_account__c,
							mfiforce__interest_remaining__c,
							mfiforce__principal_remaining__c,
							mfiforce__amount_overdue__c							
							From mfiforce__loan_write_off_transaction__c"
		  return loanWriteOffTransactionStr
		end
	#CRM OBJECT_ = "mfiforce__loans_history__c"
		def getLoansHistoryObjName
		  return "mfiforce__loans_history__c"
		end
	#lOANS_HISTORY_QUERY
		def getLoansHistoryQuery
		  loansHistoryStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__number_of_months_remaining__c,
							mfiforce__emi__c,
							mfiforce__purpose_of_the_loan__c,
							mfiforce__where_do_you_save__c,
							mfiforce__type_of_loan__c,
							lastactivitydate
							From mfiforce__loans_history__c"
		  return loansHistoryStr
		end	
	#CRM OBJECT_ = "mfiforce__Meeting_Schedule__c"
		def getMeetingScheduleObjName
			return "mfiforce__Meeting_Schedule__c"
		end
	#MEETING_SCHEDULE_QUERY
		def getMeetingScheduleQuery
			meetingScheduleStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Frequency__c, 
							mfiforce__Start_Date__c
							FROM mfiforce__Meeting_Schedule__c"
			return meetingScheduleStr
		end
	#CRM OBJECT_ = "mfiforce__mf_account__c"
		def getMfAccountObjName
		  return "mfiforce__mf_account__c"
		end
	#MF_ACCOUNT_QUERY
		def getMfAccountQuery
		  mfAccountStr = "SELECT Id,  
				CreatedById,
				LastModifiedById,
				OwnerId,
				CreatedDate, 
				LastModifiedDate,
				IsDeleted, 
				SystemModstamp,
				Name,
				  mfiforce__Acccount_Type_Multiplier__c, 
				  mfiforce__Account_Type__c, 
				  mfiforce__Balance__c, 
				  mfiforce__Branch__c, 
				  mfiforce__Category_1__c, 
				  mfiforce__Category_2__c, 
				  mfiforce__Category_3__c, 
				  mfiforce__Category_4__c, 
				  mfiforce__Description__c, 
				  mfiforce__FY_Closing_Balance__c, 
				  mfiforce__Fiscal_Year__c, 
				  mfiforce__Is_Master__c, 
				  mfiforce__JV_Allowed__c, 
				  mfiforce__Long_Description__c, 
				  mfiforce__Parent_Account__c, 
				  mfiforce__Title__c, 
				  mfiforce__isLeaf__c 
				  FROM mfiforce__MF_Account__c"
		  return mfAccountStr
		end
	#CRM OBJECT_ = "mfiforce__mf_account_type__c"
		def getMfAccountTypeObjName
		  return "mfiforce__mf_account_type__c"
		end
	#MF_ACCOUNT_TYPE_QUERY
		def getMfAccountTypeQuery
		  mfAccountTypeStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name
							FROM mfiforce__MF_Account_Type__c"
		  return mfAccountTypeStr
		end
	#CRM OBJECT_ = "mfiforce__MFError__c"
		def	getMfErrorObjName
			return "mfiforce__MFError__c"
		end
	#MFERROR_QUERY
		def getMfErrorQuery
			mFErrorStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Component__c, 
							mfiforce__Message__c, 
							mfiforce__Type__c 
							FROM mfiforce__MFError__c"
			return mFErrorStr
		end
	#CRM OBJECT_ = "mfiforce__Month_Process__c"
		def getMonthProcessObjName
			return "mfiforce__Month_Process__c"
		end
	#MONTH_PROCESS_QUERY
		def getMonthProcessQuery
			monthProcessStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Branch__c, 
							mfiforce__Last_Day_of_Month__c, 
							mfiforce__Month_End_Process_Finished__c, 
							mfiforce__Month_End_Process_Started__c, 
							mfiforce__Month_Ended__c
							FROM mfiforce__Month_Process__c"
			return monthProcessStr
		end
	#CRM OBJECT_ = "mfiforce__Office___c"
		def getOfficeNameObjName
			return "mfiforce__Office___c"
		end
	#OFFICE__QUERY
		def getOfficeQuery
			officeStr = "SELECT	Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Bank_Account_Checks__c, 
							mfiforce__Check_Account__c, 
							mfiforce__Office__ID__c, 
							mfiforce__Office_Location__c, 
							mfiforce__Office_Short___c, 
							mfiforce__Office_Type__c, 
							mfiforce__Cash_Account__c, 
							mfiforce__Current_System_Date__c, 
							mfiforce__Days_in_advance_to_create_Collection_Rep__c, 
							mfiforce__Inward_Check_Clearance_Account__c, 
							mfiforce__Is_Branch__c, 
							mfiforce__Loan_Schedule_tied_to_Meeting_Schedule__c, 
							mfiforce__Mark_Suspended_After_Days__c, 
							mfiforce__Outward_Check_Clearance_Account__c, 
							mfiforce__Parent_Office__c, 
							mfiforce__Profit_and_Loss_Account__c, 
							mfiforce__State__c, 
							mfiforce__Write_Off_Suggestion_Days__c 
							FROM mfiforce__Office___c"
			return officeStr
		end
	#CRM OBJECT_ = "mfiforce__Office_Type__c"
		def getOfficeTypeObjName 
			return "mfiforce__Office_Type__c"
		end
	#OFFICE_TYPE_QUERY
		def getOfficeTypeQuery
			officeTypeStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Office_Type_Short_Code__c, 
							mfiforce__Office_Type_ID__c
							FROM mfiforce__Office_Type__c"
			return officeTypeStr
		end
	#CRM OBJECT_ = "mfiforce__Overdue_Fee__c"
		def getOverdueFeeObjName
			return "mfiforce__Overdue_Fee__c"
		end
	#OVERDUE_FEE_QUERY
		def getOverdueFeeQuery
			overdueFeeStr = "SELECT	Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Fee__c,  
							mfiforce__Loan_Account__c, 
							mfiforce__Overdue_Amount__c
							FROM mfiforce__Overdue_Fee__c"
			return overdueFeeStr
		end
	#CRM OBJECT_ = "mfiforce__Paid_Fee__c"
		def getPaidFeeObjName
			return "mfiforce__Paid_Fee__c"
		end
	#PAID_FEE_QUERY
		def getPaidFeeQuery
			paidFeeStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Fee__c, 
							mfiforce__Paid_Fee_Amount__c,
							mfiforce__Repayment_Schedule__c
							FROM mfiforce__Paid_Fee__c"
			return paidFeeStr
		end
	#CRM OBJECT_ = "mfiforce__Payment_Mode__c"
		def getPaymentModeObjName
			return "mfiforce__Payment_Mode__c"
		end
	#PAYMENT_MODE_QUERY
		def getPaymentModeQuery
			paymentModeStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name
							FROM mfiforce__Payment_Mode__c"
			return paymentModeStr
		end
	#CRM OBJECT_ = "mfiforce__Poverty_Likelihood_Chart__c"
		def getPovertyLikelihoodChartObjName
			return "mfiforce__Poverty_Likelihood_Chart__c"
		end
	#POVERTY_LIKELIHOOD_CHART_QUERY
		def getPovertyLikelihoodChartQuery
			povertyLikelihoodChartStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										OwnerId,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name, 
										mfiforce__Bottom_Half_Below_National_Poverty_Line__c, 
										mfiforce__Country__c, 
										mfiforce__Max_PPI_Score__c, 
										mfiforce__Min_PPI_Score__c,  
										mfiforce__Top_Half_Below_National_Poverty_Line__c, 
										mfiforce__Total_Above_National_Poverty_Line__c, 
										mfiforce__Total_Below_National_Poverty_Line__c 
										FROM mfiforce__Poverty_Likelihood_Chart__c"
			return povertyLikelihoodChartStr
		end
	#CRM OBJECT_ = "mfiforce__PPI__c"
		def getPPIObjName
			return "mfiforce__PPI__c"
		end
	#PPI_QUERY
		def getPPIQuery
			pPIStr = "SELECT Id,  
					CreatedById,
					LastModifiedById,
					OwnerId,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					mfiforce__Evaluation_Start_Date__c, 
					mfiforce__Number_of_Households_Clients__c, 
					mfiforce__Question_Set__c
					FROM mfiforce__PPI__c"
			return pPIStr
		end
	#CRM OBJECT_ = "mfiforce__PPI_Household_Data__c"
		def getPPIHouseholdDataObjName
			return "mfiforce__PPI_Household_Data__c"
		end
	#PPI_HOUSEHOLD_DATA_QUERY
		def getPPIHouseholdDataQuery
			pPIHouseholdDataStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Client__c, 
							mfiforce__Interview_Date__c, 
							mfiforce__Interview_Duration__c, 
							mfiforce__PPI__c, 
							mfiforce__Staff__c, 
							mfiforce__Total_Loan_Amount__c, 
							mfiforce__Total_Weight__c 
							FROM mfiforce__PPI_Household_Data__c"
			return pPIHouseholdDataStr
		end
	#CRM OBJECT_ = "mfiforce__PPI_Indicator__c"
		def getPPIIndicatorObjName 
			return "mfiforce__PPI_Indicator__c"
		end
	#PPI_INDICATOR_QUERY
		def getPPIIndicatorQuery
			pPIIndicatorStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								mfiforce__Answer_Choice__c, 
								mfiforce__PPI__c, , 
								mfiforce__PPI___c, 
								mfiforce__Question__c, 
								mfiforce__Question_Text__c, 
								mfiforce__Weight__c 
								FROM mfiforce__PPI_Indicator__c"
			return pPIIndicatorStr
		end		
	#CRM OBJECT_ = "mfiforce__PPIChartCountryAndYear__c"
		def getPPIChartCountryAndYearObjName
			return "mfiforce__PPIChartCountryAndYear__c"
		end
	#PPICHARTCOUNTRYANDYEAR_QUEARY
		def getPPIChartCountryAndYearQuery
			pPIChartCountryAndYearStr = "SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Year__c 
							FROM mfiforce__PPIChartCountryAndYear__c"
			return pPIChartCountryAndYearStr
		end
	#CRM OBJECT_ = "mfiforce__Product_Category__c"
		def getProductCategoryObjName
			return "mfiforce__Product_Category__c"
		end
	#PRODUCT_CATEGORY_QUERY
		def getProductCategoryQuery
			productCategoryStr = "SELECT  Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Description__c, 
									mfiforce__Product_Type__c, 
									mfiforce__Status__c
									FROM mfiforce__Product_Category__c"
			return productCategoryStr
		end
	#CRM OBJECT_ = "mfiforce__Question__c"
		def getQuestionObjName
			return "mfiforce__Question__c"
		end
	#QUESTION_QUERY
		def getQuestionQuery
			questionObjNameStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Answer_Type__c, 
							mfiforce__Options__c, 
							mfiforce__Question__c, 
							mfiforce__State__c, 
							FROM mfiforce__Question__c"
			return questionObjNameStr
		end
	#CRM OBJECT_ = "mfiforce__Question_Set__c"
		def getQuestionSetObjName
			return "mfiforce__Question_Set__c"
		end
	#QUESTION_SET_QUERY
		def getQuestionSetQuery
			questionSetStr = "SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name
							FROM mfiforce__Question_Set__c"
			return questionSetStr
		end
	#CRM OBJECT_ = "mfiforce__Question_Junction__c"
		def getQuestionJunctionObjName
			return "mfiforce__Question_Junction__c"
		end
	#QUESTION_JUNCTION_QUERY
		def getQuestionJunctionQuery
			questionJunctionStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Question__c, 
							mfiforce__Question_Set__c
							FROM mfiforce__Question_Junction__c"
			return questionJunctionStr
		end
	#CRM OBJECT_ = "mfiforce__Quick_Link__c"
		def getQuickLinkObjName
			return "mfiforce__Quick_Link__c"
		end
	#QUICK_LINK_Query
		def getQuickLinkQuery
			quickLinkStr = "SELECT  Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Page_URL__c, 
							mfiforce__Section__c
							FROM mfiforce__Quick_Link__c"
			return quickLinkStr
		end
	#CRM OBJECT_ = "mfiforce__Recovery_Order__c"
		def getRecoveryOrderObjName
			return "mfiforce__Recovery_Order__c"
		end
	#RECOVERY_ORDER_QUERY
		def getRecoveryOrderQuery
			recoveryOrderStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Amount_Type__c, 
							mfiforce__Loan_Product__c, 
							mfiforce__Order_Number__c
							FROM mfiforce__Recovery_Order__c"
			return recoveryOrderStr
		end
	#CRM OBJECT_ = "mfiforce__Repayment_Schedule__c"
		def getRepaymentScheduleObjName
			return "mfiforce__Repayment_Schedule__c"
		end
	#REPAYMENT_SCHEDULE_QUERY
		def getRepaymentScheduleQuery
			repaymentScheduleStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Balance__c, 
									mfiforce__Barcode_Subtype__c, 
									mfiforce__Barcode_Type__c, 
									mfiforce__Date_Paid__c, 
									mfiforce__Due_Date__c, 
									mfiforce__Due_Interest__c, 
									mfiforce__Due_Interest_On_Overdue__c, 
									mfiforce__Due_Principal__c, 
									mfiforce__Id__c, 
									mfiforce__Interest_Accrued_Not_Due__c, 
									mfiforce__Is_Archived__c, 
									mfiforce__Is_Partially_Paid__c, 
									mfiforce__Loan_Account__c, 
									mfiforce__Paid_Fees__c, 
									mfiforce__Paid_Interest__c, 
									mfiforce__Paid_Interest_On_Overdue__c, 
									mfiforce__Paid_Principal__c, 
									mfiforce__Paid_Total__c, 
									mfiforce__Total_Due_Fees__c, 
									mfiforce__Total_Installment__c, 
									mfiforce__Total_Paid_Fees__c, 
									mfiforce__Transaction_Amount__c, 
									mfiforce__Unpaid_Fees__c, 
									mfiforce__Unpaid_Installment__c, 
									mfiforce__Unpaid_Interest__c, 
									mfiforce__Unpaid_Overdue_Interest__c, 
									mfiforce__Unpaid_Principal__c, 
									mfiforce__isPaid__c 
									FROM mfiforce__Repayment_Schedule__c"
			return repaymentScheduleStr
		end
	#CRM OBJECT_ = "mfiforce__Repayment_Transaction_Adjustment__c"
		def getRepaymentTransactionAdjustmentObjName
			return "mfiforce__Repayment_Transaction_Adjustment__c"
		end
	#REPAYMENT_TRANSACTION_ADJUSTMENT_QUERY
		def getRepaymentTransactionAdjustmentQuery
			repaymentTransactionAdjustmentStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Adjustment_Txn_Date__c, 
							mfiforce__Cleared__c, 
							mfiforce__Loan_Payment_Transaction__c, 
							mfiforce__Receipt_ID__c, 
							mfiforce__Rejected__c
							FROM mfiforce__Repayment_Transaction_Adjustment__c"
			return repaymentTransactionAdjustmentStr
		end
	#CRM OBJECT_ = "mfiforce__Sales_Income_Estimate__c"
		def getSalesIncomeEstimateObjName
			return "mfiforce__Sales_Income_Estimate__c"
		end
	#SALES_INCOME_ESTIMATE_QUERY
		def getSalesIncomeEstimateStr
			salesIncomeEstimateStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									OwnerId,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									mfiforce__Average_Sales_Daily__c, 
									mfiforce__Average_Sales_Monthly__c, 
									mfiforce__Average_Sales_Weekly__c, 
									mfiforce__CLIENTS_FAMILY_MEMBERS_SALARY_INCOME__c, 
									mfiforce__Client__c, 
									mfiforce__Contact_of_Employer__c,
									mfiforce__Employee__c, 
									mfiforce__Employers_Details_Add_multiple__c, 
									LastActivityDate, 
									mfiforce__Loan_Account__c, 
									mfiforce__Monthly_Salary__c, 
									mfiforce___and_Address_of_Employer__c, 
									mfiforce__No_of_years_in_Service__c, 
									mfiforce__Sales_are__c,
									mfiforce__TOTAL_SALARY_A__c 
									FROM mfiforce__Sales_Income_Estimate__c"
			return salesIncomeEstimateStr
		end
	#CRM OBJECT_="mfiforce__Savings_Account__c"
		def getSavingsAccountObjName
		  return "mfiforce__Savings_Account__c"  
		end
	#SAVINGS_ACCOUNT_QUERY
		def getSavingsAccountQuery
		savingsAccountQueryStr = "SELECT  Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
					  mfiforce__Approval_Date__c, 
					  mfiforce__Balance__c, 
					  mfiforce__Branch__c, 
					  mfiforce__Center__c, 
					  mfiforce__Client_ID__c, 
					  mfiforce__Deposit_Start_Date__c, 
					  mfiforce__Fee_Set__c, 
					  mfiforce__Fixed_Deposit_Amount__c, 
					  mfiforce__Fixed_Deposit_End_Date__c, 
					  mfiforce__Group__c, 
					  mfiforce__Interest_to_be_Posted__c, 
					  mfiforce__Last_Deposit_Date__c, 
					  mfiforce__Linked_Savings_Account__c, 
					  mfiforce__Minimum_Balance__c, 
					  mfiforce__Next_Calc_Date__c, 
					  mfiforce__Next_Posting_Date__c,
					  mfiforce__Recommended_Mandatory_Amnt_for_Deposits__c,
					  mfiforce__Savings_Deposit_Count__c, 
					  mfiforce__Savings_Product___c, 
					  mfiforce__Share_Capital_Account__c, 
					  mfiforce__Status__c, 
					  mfiforce__Total_Deposit__c, 
					  mfiforce__Total_Interest_Earned__c, 
					  mfiforce__Total_Overdue__c, 
					  mfiforce__Total_Withdrawal__c, 
					  mfiforce__Uncleared_Check_Deposit__c, 
					  mfiforce__Uncleared_Check_Withdrawal__c, 
					  mfiforce__Uncleared_Deposit_Amount__c, 
					  mfiforce__Uncleared_Withdrawal_Amount__c 
					  FROM mfiforce__Savings_Account__c"
		  return savingsAccountQueryStr
		  end
	#CRM OBJECT_ = "mfiforce__savings_account_interest__c"
		def getSavingsAccountInterestObjName
		  return "mfiforce__savings_account_interest__c"
		end
	#SAVINGS_ACCOUNT_INTEREST_QUERY
		def getSavingsAccountInterestQuery
		  savingAccountInterestStr ="SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Date__c,
							mfiforce__Interest_To_Be_Posted__c,
							mfiforce__Posted__c, 
							mfiforce__Savings_Account__c
							FROM mfiforce__Savings_Account_Interest__c"
		 return savingAccountInterestStr
		end
	#CRM OBJECT_ = "mfiforce__savings_payment_collection_record__c"
		def getSavingsPaymentCollectionRecordObjName
		  return "mfiforce__savings_payment_collection_record__c"
		end
	#SAVINGS_PAYMENT_COLLECTION_RECORD_QUERY
		def getSavingsPaymentCollectionRecordQuery
		  savingsPaymentCollectionRecordStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							  mfiforce__Actual_Collected_Amount__c, 
							  mfiforce__Check__c, 
							  mfiforce__Client__c, 
							  mfiforce__Collection_Date__c, 
							  mfiforce__Mandatory_Payment__c, 
							  mfiforce__Overdues__c,
							  mfiforce__Payment_Mode__c, 
							  mfiforce__Savings_Account__c, 
							  mfiforce__Total_Collection_Amount__c 
							  FROM mfiforce__Savings_Payment_Collection_Record__c"
		  return savingsPaymentCollectionRecordStr
		end
	#CRM OBJECT_ = "mfiforce__Savings_Payment_Transaction__c"
		def getSavingsPaymentTransactionObjName
			return "mfiforce__Savings_Payment_Transaction__c"
		end
	#SAVINGS_PAYMENT_TRANSACTION_QUERY
		def getSavingsPaymentTransactionQuery
			savingsPaymentTransactionStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											OwnerId,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											mfiforce__Balance_After__c, 
											mfiforce__Check__c, 
											mfiforce__Check_Status__c, 
											mfiforce__Cleared__c, 
											mfiforce__Description__c, 
											mfiforce__Is_System_Generated__c, 
											mfiforce__Opening_Balance__c, 
											mfiforce__Partial_Payment__c, 
											mfiforce__Payment_Mode__c, 
											mfiforce__Receipt_Date__c, 
											mfiforce__Receipt_ID__c,
											mfiforce__Rejected__c, 
											mfiforce__Savings_Account__c, 
											mfiforce__Supervision_Required__c, 
											mfiforce__Terminate_Fixed_Deposit__c, 
											mfiforce__Transaction_Amount__c, 
											mfiforce__Transaction_Date__c, 
											mfiforce__Transaction_Type__c 
											FROM mfiforce__Savings_Payment_Transaction__c"
			return savingsPaymentTransactionStr
		end
	#CRM OBJECT_ = "mfiforce__savings_product__c"
		def getSavingsProductObjName
		  return "mfiforce__savings_product__c"
		end
	#SAVINGS_PRODUCT_QUERY
		def getSavingsProductQuery
		  savingsProductStr = "SELECT Id,  
					CreatedById,
					LastModifiedById,
					OwnerId,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					mfiforce__Accrued_Interest_Payable_Account__c, 
					mfiforce__Allow_Early_Withdrawals__c, 
					mfiforce__Amount_applies_to__c, 
					mfiforce__Approval_Date__c, 
					mfiforce__Balance_Used_for_Int_Rate_Calculation__c, 
					mfiforce__Cash_Fixed_Deposit__c, 
					mfiforce__Deposit_Frequency__c, 
					mfiforce__Fee_Set__c, 
					mfiforce__Fixed_Deposit_Term__c, 
					mfiforce__Frequency_of_Interest_Posting_to_Account__c, 
					mfiforce__Frequency_of_Int_Rate_Calc__c, 
					mfiforce__Interest_Expense_Account__c, 
					mfiforce__Interest_Payable_Account__c, 
					mfiforce__Interest_Rate__c, 
					mfiforce__Maintenance_Fees__c, 
					mfiforce__Amount_for_Deposit__c, 
					mfiforce__Max_Amount_Per_Withdrawal__c, 
					mfiforce__maximum_amount_for_fixed_deposit__c, 
					mfiforce__Min_Balance_Required_for_Interest_Rate_c__c, 
					mfiforce__minimum_amount_for_fixed_deposit__c, 
					mfiforce__Type_of_Deposits__c, 
					mfiforce__Product_Type__c, 
					mfiforce__Savings_Product_Control_Account__c, 
					mfiforce__Start_Date__c, 
					mfiforce__Status__c, 
					mfiforce__Time_Period_for_Int_Rate_Calculation__c, 
					mfiforce__Type_of___c
					FROM mfiforce__Savings_Product__c"
		  return savingsProductStr
		end
	#CRM OBJECT_ = "mfiforce__savings_product_accounting_setup__c"
		def getSavingsProductAccountingSetupObjName
		  return "mfiforce__savings_product_accounting_setup__c"
		end
	#SAVINGS_PRODUCT_ACCOUNTING_SETUP_QUERY
		def getSavingsProductAccountingSetupQuery
		  savingsProductAccountingSetupStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Business_Event__c, 
							mfiforce__Default_Rule__c, 
							mfiforce__Savings_Product__c,
							mfiforce__Use_Default_Setup__c, 
							mfiforce__User_Defined_Rule__c 
							FROM mfiforce__Savings_Product_Accounting_Setup__c"
		  return savingsProductAccountingSetupStr
		end
	#CRM OBJECT_ = "mfiforce__savings_withdrawal_transaction__c"
		def getSavingsWithdrawalTransactionObjName
		  return "mfiforce__savings_withdrawal_transaction__c"
		end
	#SAVINGS_WITHDRAWAL_TRANSACTION_QUERY
		def getSavingsWithdrawalTransactionQuery
		  savingsWithdrawalTransactionStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Receipt_Date__c, 
							mfiforce__Receipt_ID__c, 
							mfiforce__Savings_Account__c,
							mfiforce__Withdrawal_Amount__c, 
							mfiforce__Withdrawal_Date__c 
							FROM mfiforce__Savings_Withdrawal_Transaction__c"
		  return savingsWithdrawalTransactionStr
		end
	#CRM OBJECT_ = "mfiforce__Scheduled_Job__c"
		def getScheduledJobObjName
		 return "mfiforce__Scheduled_Job__c"
		end
	#SCHEDULED_JOB_QUERY
		def getScheduledJobQuery
			scheduledJobStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							mfiforce__Class_File__c, 
							mfiforce__Description__c, 
							mfiforce__Frequency__c, 
							mfiforce__Last_Run__c, 
							FROM mfiforce__Scheduled_Job__c"
			return scheduledJobStr
		end
	#CRM OBJECT_ = "mfiforce__Scheduled_Queries__c"
		def getScheduledQueriesObjName
			return "mfiforce__Scheduled_Queries__c"
		end
	#SCHEDULED_QUERIES_QUERY
		def getScheduledQueriesQuery
			scheduledQueriesStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Completed_Runs__c, 
							mfiforce__Run_Every_Units__c, 
							 mfiforce__Description__c, 
							mfiforce__ObjNameectApi__c, 
							mfiforce__Query__c, 
							mfiforce__Run_Every__c, 
							mfiforce__Scheduled_Date__c, 
							mfiforce__ScheduledDate__c, 
							mfiforce__Unfinished_Runs__c 
							FROM mfiforce__Scheduled_Queries__c"
			return scheduledQueriesStr
		end
	#CRM OBJECT_ = "mfiforce__Search__c"
		def getSearchObjName
			return "mfiforce__Search__c"
		end
	#SEARCH_QUERY
		def getSearchQuery
			searchStr = "SELECT Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__Accounting_Rule__c, 
						mfiforce__Branch__c, 
						mfiforce__Center__c, 
						mfiforce__Check__c, 
						mfiforce__Client__c,  
						mfiforce__Date__c, 
						mfiforce__End_Date__c, 
						mfiforce__Group__c, 
						mfiforce__Loan_Account__c, 
						mfiforce__Loan_Product__c, 
						mfiforce__Report__c, 
						mfiforce__Report_Type__c, 
						mfiforce__Savings_Account__c, 
						mfiforce__Savings_Product__c, 
						mfiforce__Start_Date__c, 
						mfiforce__Transaction_Source__c, 
						mfiforce__User__c, 
						mfiforce__Document_Number__c 
						FROM mfiforce__Search__c"
			return searchStr
		end
	#CRM OBJECT_ = "mfiforce__Staff__c"
		def getStaffObjName
			return "mfiforce__Staff__c"
		end
	#STAFF_QUERY
		def getStaffQuery
			staffStr = "SELECT Id,  
						CreatedById,
						LastModifiedById,
						OwnerId,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						mfiforce__Address_Line_1__c, 
						mfiforce__Address_Line_2__c, 
						mfiforce__Branch__c, 
						mfiforce__City__c, 
						mfiforce__Country__c, 
						mfiforce__First___c, 
						mfiforce__Last___c, 
						mfiforce__Phone_Number__c, 
						mfiforce__Role__c, 
						mfiforce__State__c
						FROM mfiforce__Staff__c"
			return staffStr
		end
	#CRM OBJECT_ = "mfiforce__Start_Here__c"
		def getStartHereObjName
			return "mfiforce__Start_Here__c"
		end
	#START_HERE_QUERY
		def getStartHereQuery
			startHereStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name
							FROM mfiforce__Start_Here__c"
			return startHereStr
		end
	#CRM OBJECT_ = "mfiforce__transaction__c"
		def getTrasactionObjName
		  return "mfiforce__transaction__c"
		end
	#TRANSACTION_QUERY
		def getTransactionQuery
		  transactionStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Branch__c, 
							mfiforce__Client__c, 
							mfiforce__Group__c, 
							mfiforce__Id__c, 
							mfiforce__JV_Transaction__c, 
							mfiforce__Journal__c, 
							mfiforce__Posted__c, 
							mfiforce__Rejected__c, 
							mfiforce__System_Generated__c, 
							mfiforce__Transaction_Date__c, 
							mfiforce__Transaction_Header_Writeable__c, 
							mfiforce__Transaction_Source__c, 
							mfiforce__Document_Number__c 
							FROM mfiforce__Transaction__c"
		  return transactionStr
		end
	#CRM OBJECT_ = "mfiforce__transaction_entry__c"
		def getTransactionEntryObjName
		  return "mfiforce__transaction_entry__c"
		end
	#TRANSACTION_ENTRY_QUERY
		def getTransactionEntryQuery
		  transactoinEntryStr = "SELECT Id,  
					CreatedById,
					LastModifiedById,
					OwnerId,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					  mfiforce__Closing_Balance__c, 
					  mfiforce__Credit__c, 
					  mfiforce__Debit__c, 
					  mfiforce__Description__c, 
					  mfiforce__Id__c, 
					  mfiforce__MF_Account__c, 
					  mfiforce__Opening_Balance__c, 
					  mfiforce__Readonly__c, 
					  mfiforce__Savings_Sub_Ledger__c, 
					  mfiforce__Sub_Ledger__c, 
					  mfiforce__ToBeDeleted__c, 
					  mfiforce__Transaction__c, 
					  mfiforce__Transaction_Date__c
					  FROM mfiforce__Transaction_Entry__c"
		  return transactoinEntryStr
		end
	#CRM OBJECT_ = "mfiforce__transaction_source__c"
		def getTransactionSourceObjName
		  return "mfiforce__transaction_source__c"
		end
	#TRANSACTION_SOURCE_QUERY
		def getTransactionSourceQuery
		  transactionSourceStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name
							FROM mfiforce__Transaction_Source__c"
		  return transactionSourceStr
		end
	#CRM OBJECT_ = "mfiforce__user_branch_info__c"
		def getUserBranchInfoObjName
		  return "mfiforce__user_branch_info__c"
		end
	#USER_BRANCH_INFO_QUERY
		def getUserBranchInfoQuery
		  userBranchInfoStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,  
							mfiforce__Branch__c, 
							mfiforce__Default_Branch__c, 
							mfiforce__User__c
							FROM mfiforce__User_Branch_Info__c"
		  return userBranchInfoStr
		end
	#CRM OBJECT_ = "mfiforce__Users_Quick_Links__c"
		def getUsersQuickLinksObjName
			return "mfiforce__Users_Quick_Links__c"
		end
	#USERS_QUICK_LINKS_QUERY
		def getUsersQuickLinksQuery
			usersQuickLinksStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Quick_Links__c,			 
							mfiforce__User__c, 
							FROM mfiforce__Users_Quick_Links__c"
			return usersQuickLinksStr
		end
	#CRM OBJECT_ = "mfiforce__Value_Set_Values__c"
		def getValueSetValuesObjName
			return "mfiforce__Value_Set_Values__c"
		end
	#VALUE_SET_VALUES_QUERY
		def getValueSetValuesQuery
			valueSetValuesStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Description__c, 
							mfiforce__Effective_From__c, 
							mfiforce__Effective_To__c, 
							mfiforce__Id__c,
							mfiforce__Set_id__c, 
							mfiforce__Value_Set__c 
							FROM mfiforce__Value_Set_Values__c"
			return valueSetValuesStr
		end
	#CRM OBJECT_ = "mfiforce__Value_Sets__c"
		def getValueSetsObjName
			return "mfiforce__Value_Sets__c"
		end
	#VALUE_SETS_QUERY
		def getValuesSetsQuery
			valueSetsStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							mfiforce__Description__c, 
							mfiforce__Effective_from__c, 
							mfiforce__Effective_to__c, 
							mfiforce__Set_id__c
							FROM mfiforce__Value_Sets__c"
			return valueSetsStr
		end
	#CRM OBJECT_ = "sfLma__License__c"
		def getsfLma__LicenseObjName
			return "sfLma__License__c"
		end
	#SFLMA__LICENSE_QUERY
		def getsfLma__LicenseQuery
			sfLma__LicenseStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								OwnerId,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								sfLma__Account__c, 
								sfLma__Contact__c, 
								sfLma__Expiration__c, 
								sfLma__Expiration_Date__c, 
								sfLma__Help__c, 
								sfLma__Install_Date__c, 
								LastActivityDate, 
								sfLma__Lead__c, 
								sfLma__License_Status__c, 
								sfLma__License_Type__c, 
								sfLma__Licensed_Seats__c, 
								sfLma__Package_License_ID__c, 
								sfLma__Package_Version__c, 
								sfLma__Proxy_User__c, 
								RecordTypeId,
								sfLma__Seats__c, 
								sfLma__Status__c, 
								sfLma__Subscriber_Org_ID__c, 
								sfLma__Used_Licenses__c 
								FROM sfLma__License__c"
			return sfLma__LicenseStr
		end
	#CRM OBJECT_ = "sfLma__Package__c"
		def getsfLma__PackageObjName
			return "sfLma__Package__c"
		end
	#SFLMA__PACKAGE_QUERY
		def getsfLma__PackageQuery
			sfLma__PackageStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							sfLma__Developer___c, 
							sfLma__Developer_Org_ID__c, 
							sfLma__Help__c, 
							LastActivityDate, 
							sfLma__Latest_Version__c, 
							sfLma__Lead_Manager__c, 
							sfLma__Package_ID__c,
							sfLma__Release_Date__c
							FROM sfLma__Package__c"
			return sfLma__PackageStr
		end
	#CRM OBJECT_ = "sfLma__Package_Version__c"
		def getsfLma__PackageVersionObjName
			return "sfLma__Package_Version__c"
		end
	#SFLMA__PACKAGE_VERSION_QUERY
		def getsfLma__PackageVersionQuery
			sfLma__PackageVersionStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										OwnerId,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										sfLma__Is_Beta__c, 
										sfLma__Help__c, 
										LastActivityDate, 
										sfLma__Package__c, 
										sfLma__Release_Date__c, 
										sfLma__Sequence__c, 
										sfLma__Version__c, 
										sfLma__Version_ID__c 
										FROM sfLma__Package_Version__c"
			return sfLma__PackageVersionStr
		end
end