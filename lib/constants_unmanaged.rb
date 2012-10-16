module MFiFlexUnmanagedConstants
      
	#CLIENT_OBJ_="Client__c"
    def getClientObjName
      return "client__c"  
    end
  #CLIENT_QUERY
    def getClientQuery        
        clientQueryStr = "select id,
                            createddate,
                            createdbyid,
                            lastmodifieddate,
                            lastmodifiedbyid,
                            systemmodstamp,
                            ownerid,
                            isdeleted,
                            name,
                            group__c,
                            salutation__c,
                            first_name__c ,
                            middle_name__c ,
                            last_name__c ,
                            government_id__c ,
                            date_of_birth__c ,
                            gender__c,
                            marital_status__c,
                            number_of_children__c,
                            citizenship__c,
                            ethnicity__c,
                            education_level__c,
                            business_activity__c,
                            handicapped__c,
                            spouse_father_s_first_name__c ,
                            spouse_father_s_middle_name__c ,
                            spouse_father_s_last_name__c ,
                            spouse_or_father__c,
                            client_start_date__c ,
                            address_1__c ,
                            address_2__c ,
                            address_3__c ,
                            city__c,
                            zipcode__c,
                            telephone_no__c ,
                            notes__c ,
                            status__c,
                            loan_officer__c,
                            trained__c ,
                            office__c,
                            id_count__c,
                            country__c,
                            state__c,
                            approval_date__c ,
                            fee_set__c,
                            total_fees_charged__c ,
                            fees_collected__c ,
                            center__c,
                            district__c,
                            nominee__c,
                            clientcnt__c,
                            zone__c,
                            check_for_duplicates__c,
                            source_loan_officer__c,
                            current_loan_officer__c,
                            Sector__c,
                            Membership_Amount_Paid__c
                            from client__c"
                                                        
          return clientQueryStr;
      end
      
	#CRM OBJECT_ = "Accounting_Period__c"
		def getAccountingPeriodObjName
			return "Accounting_Period__c"  
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
							End_Date__c, 
							Start_Date__c, 
							Status__c, 
							Summarized__c
							FROM Accounting_Period__c" 
          return accountingPeriodQueryStr;
      end
	#CRM OBJECT_ = "Accounting_Rule_Header__c"
		def getAccountingRuleHeaderObjName
			return "Accounting_Rule_Header__c"
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
											Active__c, 
											Business_Event__c, 
											System_Generated__c
											FROM Accounting_Rule_Header__c"
			return accountingRuleHeaderQueryStr;
		end
	#CRM OBJECT_ = "Accounting_Rule_Line__c"
		def getAccountingRuleLineObjName
			return "Accounting_Rule_Line__c"
		end
	#ACCOUNTING_RULE_LINE_QUERY
		def getAccountingRuleLineQuery
			accountingRuleLineStr = "SELECT Id, 
									CreatedById, 
									CreatedDate,
									LastModifiedById, 
									LastModifiedDate,
									IsDeleted,
									SystemModstamp,
									Name, 
									Accounting_Rule_Header__c, 
									Amount_Type__c, 
									Branch__c, 
									Credit_Account__c, 
									Credit_Subledger__c, 
									Debit_Account__c, 
									Debit_Subledger__c, 
									Fee__c, 
									Parameters__c
									FROM Accounting_Rule_Line__c"
			return accountingRuleLineStr;
		end
	#CRM OBJECT_ = "Accounting_Segment_Setup__c"
		def getAccountingSegmentSetupObjName
			return "Accounting_Segment_Setup__c"
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
										Accounting_Segmentation__c, 
										Balancing_Segment_Number__c, 
										Delimiter__c, 
										Segment1__c, 
										Segment2__c, 
										Segment3__c, 
										Segment4__c, 
										Segment5__c, 
										Segment6__c, 
										Segment7__c
										FROM Accounting_Segment_Setup__c"
			return accountingSegmentSetupStr;
		end
	#CRM OBJECT_ = "Address__c"
		def getAddressObjName
			return "Address__c"
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
							Address_1__c, 
							Address_2__c, 
							Address_3__c, 
							Address_Date__c, 
							Address_Type__c, 
							City__c, 
							Landmark__c, 
							LastActivityDate, 
							Phone1__c, 
							Phone2__c, 
							PinCode__c, 
							State__c
							FROM Address__c"
			return addressStr; 
		end
	#CRM OBJECT_ = "AmazonConfig__c"
		def getAmazonConfigObjName
			return "AmazonConfig__c"
		end
	#AMAZONCONFIG_QUERY
		def getAmazonConfigQuery
			amazonConfigStr = "SELECT Id, 
								CreatedById, 
								CreatedDate, 
								IsDeleted, 
								SystemModstamp,
								LastModifiedById, 
								LastModifiedDate, 
								SetupOwnerId, 
								Name, 
								Key__c, 
								Value__c 
								FROM AmazonConfig__c"
			return amazonConfigStr;
		end
	#CRM OBJECT_ = "Annual_Business_Cycle__c"
		def getAnnualBusinessCycleObjName
			return "Annual_Business_Cycle__c"
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
										FROM Annual_Business_Cycle__c"
			return annualBussinessCycleStr;
		end
	#CRM OBJECT_ ="Answer__c"
		def getAnswerObjName
			return "Answer__c"
		end
	#ANSWER_QUERY
		def geAnswerQuery
			answerStr = "SELECT Id,
						LastModifiedById, 
						LastModifiedDate,
						IsDeleted,
						CreatedById, 
						CreatedDate,
						SystemModstamp, 
						Name, 
						Answer_Type__c,  
						Date_Answer__c,  
						Earned_Weight__c, 
						Free_Text_Answer__c,  
						Mutiselect_Answer__c, 
						Option_Text__c, 
						PPI_Household_Data__c, 
						Question__c, 
						Question_Text__c, 
						Single_Select_Answer__c
						FROM Answer__c"
			return answerStr;
		end
	#CRM OBJECT_ = "Archive_Run__c"
		def getArchiveRunObjName
			return "Archive_Run__c"
		end
	#ARCHIVE_RUN_QUERY
		def getArchiveRunQuery
			archiveRunStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							Completed__c, 
							Run_Every_Units__c, 
							Result__c, 
							Results__c, 
							Run_Every__c, 
							Schedule_Status__c, 
							Scheduled_Queries__c, 
							Scheduled_To_Run__c, 
							Status__c, 
							Trigger_Batch_Run__c, 
							Trigger_Scheduler__c 
							FROM Archive_Run__c"
			return archiveRunStr;
		end
	#CRM OBJECT_ ="Bank__c"
		def getBankObjName
			return "Bank__c"
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
							Bank_Code__c, 
							Bank_Location__c
							FROM Bank__c"
			return bankStr;
		end
	#CRM OBJECT_ = "Batch_Process_Log__c"
		def getBatchProcessLogObjName
			return "Batch_Process_Log__c"
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
									Branch__c, 
									Date__c, 
									Message__c, 
									Origin__c, 
									Time__c, 
									Type__c 
									FROM Batch_Process_Log__c"
			return batchProcessLogStr;
		end
	#CRM OBJECT_ = "Branch_Loan_Product__c"
		def getBranchLoanProductObjName
			return "Branch_Loan_Product__c"
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
									Branch__c, 
									Loan_Product__c
									FROM Branch_Loan_Product__c"
			return branchLoanProductStr;
		end
	#CRM OBJECT_ = "Branch_Location__c"
		def getBranchLocationObjName
			return "Branch_Location__c"
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
								Zip_Code__c, 
								State__c, 
								Phone__c, 
								LOC_ID__c, 
								Email__c, 
								Country__c,  
								Address_Line_3__c, 
								Address_Line_2__c, 
								Address_Line_1__c
								From Branch_Location__c"
			return branchLocationStr;
		end
	#CRM OBJECT_ = "Branch_Savings_Product__c"
		def getBranchSavingsProductObjName
			return "Branch_Savings_Product__c"
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
										Branch__c, 
										Savings_Product__c										 
										FROM Branch_Savings_Product__c"
			return branchSavingsproductStr;
		end
	#CRM OBJECT_ = "Business_Activity__c"
		def getBusinessActivityObjName
			return "Business_Activity__c"
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
									FROM Business_Activity__c"
			return businessActivityStr;
		end
	#CRM OBJECT_ = "Business_Event__c"
		def getBusinessEventObjName
			return "Business_Event__c"
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
								FROM Business_Event__c"
			return businessEventStr;
		end
	#CRM OBJECT_ = "Center__c"
		def getCenterObjName
			return "Center__c"
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
						Branch__c, 
						Center_Leader__c, 
						CenterCnt__c, 
						Current_Loan_Officer__c, 
						Loan_Officer__c, 
						Location__c, 
						Manager__c, 
						Meeting_Schedule__c, 
						Source_Loan_Officer__c
						FROM Center__c"
			return centerStr;
		end
	#CRM OBJECT_ = "Check__c"
		def getCheckObjName
			return "Check__c"
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
						Bank__c, 
						Check_Amount__c, 
						Check_Date__c, 
						Check_Drawer__c, 
						Client__c, 
						Status__c
						FROM Check__c"
			return checkStr;
		end
	#CRM OBJECT_ = "Client_History__c"
		def getClientHistoryObjName
			return "Client_History__c"
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
								Amount_of_loan__c, 
								Client__c, 
								Delinquent_Portfolio__c, 
								Interest_Paid__c,
								Loan_Cycle_Number__c, 
								Loan_Product__c, 
								MFI_Joining_Date__c, 
								Number_of_Meetings_Attended__c, 
								Number_of_Meetings_Missed__c, 
								Number_of_Missed_Payments__c, 
								Total_Amount_Paid__c, 
								Total_No_of_Active_Loans__c, 
								Total_Number_of_Payments__c, 
								Total_Savings__c 
								FROM Client_History__c"
			return clientHistoryStr;
		end
	#CRM OBJECT_ = "Client_Identification__c"
		def getClientIdentificationObjName
			return "Client_Identification__c"
		end
	#CLIENT_IDENTIFICATION_QUERY
		def getClientIdentificationQuery
			clientIdentificationStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										Check_During_Dedup_Process__c, 
										Client__c, 
										Id__c, 
										Identification_Document__c, 
										Long_Description__c 
										FROM Client_Identification__c"
			return clientIdentificationStr;
		end
	#CRM OBJECT_ = "Collection_Fee__c"
		def getCollectionFeeObjName
			return "Collection_Fee__c"
		end
	#COLLECTION_FEE_QUERY
		def getCollectionFeeQuery
			collectionFeeStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								Collection_Fee_Amount__c, 
								Fee__c, 
								Loan_Payment_Collection_Record__c 
								FROM Collection_Fee__c"
			return collectionFeeStr;
		end
	#CRM OBJECT_ = "Countries__c"
		def getCountriesObjName
			return "Countries__c"
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
							Name
							FROM Countries__c"
			return countriesStr;
		end
	#CRM OBJECT_ = "Currency__c"
		def getCurrencyObjName
			return "Currency__c"
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
							FROM Currency__c"
			return currencyStr;
		end
	#CRM OBJECT_ = "Daily_Loan_Accrual__c"
		def getDailyLoanAccrualObjName
			return "Daily_Loan_Accrual__c"
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
									Accrual_Date__c, 
									Accrued_Interest__c, 
									Eigth__c, 
									Eighteenth__c, 
									Eleventh__c, 
									Fifteenth__c, 
									Fifth__c, 
									First__c, 
									Fourteenth__c, 
									Fourth__c, 
									Interest_Overdue_Fees__c, 
									Interest_Overdue_Interest__c, 
									Interest_Overdue_Penalty__c, 
									Interest_Overdue_Principal__c, 
									LastActivityDate, 
									Loan_Account__c, 
									Month_Id__c, 
									Nineteenth__c, 
									Ninth__c, 
									Outstanding_Principal__c, 
									Posted__c, 
									Second__c, 
									Seventeenth__c, 
									Seventh__c, 
									Sixteenth__c, 
									Sixth__c, 
									Temp_Accrual_Date__c, 
									Tenth__c, 
									Third__c, 
									Thirteenth__c, 
									Thirtieth__c, 
									Thirty_First__c, 
									Twelfth__c, 
									Twentieth__c, 
									Twenty_Eight__c, 
									Twenty_Fifth__c, 
									Twenty_First__c, 
									Twenty_Fourth__c, 
									Twenty_Ninth__c, 
									Twenty_Second__c, 
									Twenty_Seventh__c, 
									Twenty_Sixth__c, 
									Twenty_Third__c 
									FROM Daily_Loan_Accrual__c"
			return dailyLoanAccrualStr;
		end
	#CRM OBJECT_ = "Day_Process__c"
		def getDayProcessObjName
			return "Day_Process__c"
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
							Accounts_Accrured__c, 
							Branch__c, 
							Date__c, 
							Day_Ended__c, 
							Day_Started__c, 
							Day_Status__c, 
							EOD_Finished__c, 
							EOD_Process_Started__c,  
							Loan_Accounting_Done__c, 
							Loan_Collection_Chart_Generated__c, 
							Loan_History_Tracked__c, 
							SOD_Process_Started__c, 
							Savings_Accrual_Done__c, 
							Savings_Collection_Chart_Generated__c, 
							Status__c
							FROM Day_Process__c"
			return dayProcessStr;
		end
	#CRM OBJECT_ = "Disbursal_Adjustment__c"
		def getDisbursalAdjustmentObjName
			return "Disbursal_Adjustment__c"
		end
	#DISBURSAL_ADJUSTMENT_QUERY
		def getDisbursalAdjustmentQuery
			disbursalAdjustmentStr = "SELECT Id,  
										CreatedById,
										LastModifiedById,
										CreatedDate, 
										LastModifiedDate,
										IsDeleted, 
										SystemModstamp,
										Name,
										Adjustment_Txn_Date__c, 
										Cleared__c, 
										Loan_Disbursal_Transaction__c, 
										Receipt_ID__c, 
										Rejected__c
										FROM Disbursal_Adjustment__c"
			return disbursalAdjustmentStr;
		end
	#CRM OBJECT_ = "Due_Fee__c"
		def getDueFeeObjName
			return "Due_Fee__c"
		end
	#DUE_FEE_QUERY
		def getDueFeeQuery
			dueFeeStr = "SELECT  Id,  
						CreatedById,
						LastModifiedById,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						Due_Fee_Amount__c, 
						Fee__c, 
						Repayment_Schedule__c 
						FROM Due_Fee__c"
			return dueFeeStr;
		end
	#CRM OBJECT_ = "Employment_Business_Detail__c"
		def getEmploymentBusinessDetailObjName
			return "Employment_Business_Detail__c"
		end
	#EMPLOYMENT_BUSINESS_DETAIL_QUERY
		def getEmploymentBusinessDetailQuery
			employmentBusinessDetailStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											Business_Activity__c, 
											Business_Address__c,
											Business_Sector__c, 
											Business_Structure__c, 
											Business_Type__c, 
											Client__c, 
											LastActivityDate, 
											Loan_Account__c, 
											Number_of_years_in_Business__c, 
											Number_of_years_in_Service__c, 
											Service_Category__c, 
											Type_of_Employment__c 
											FROM Employment_Business_Detail__c"
			return employmentBusinessDetailStr;
		end
	#CRM OBJECT_ = "Failed_Loan_Account__c"
		def	getFailedLoanAccountObjName 
			return "Failed_Loan_Account__c"
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
									Failure_Reason__c, 
									Failure_Reason_Code__c, 
									Loan_Account__c, 
									Processing_Event__c
									FROM Failed_Loan_Account__c"
			return failedLoanAccountStr;
		end
	#CRM OBJECT_ = "Family_Details__c"
		def getFamilyDetailsObjName
			return "Family_Details__c"
		end
	#FAMILY_DETAILS_QUERY
		def getFamilyDetailsQuery
			familyDetailsStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								Client__c, 
								Household_Size_including_client__c, 
								Insurance__c, 
								LastActivityDate, 
								Loan_Account__c, 
								Medical_Treatment__c, 
								Monthly_Household_Expense__c, 
								Number_of_Children_15_Years__c, 
								Number_of_earning_members__c
								FROM Family_Details__c"
			return familyDetailsStr;
		end
	#CRM OBJECT_ = "Family_Employment_Details__c"
		def getFamilyEmploymentDetailsObjName
			return "Family_Employment_Details__c"
		end
	#FAMILY_EMPLOYMENT_DETAILS_QUERY
		def getFamilyEmploymentDetailsQuery
			familyEmploymentDetailsStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											Client__c,  
											LastActivityDate, 
											Loan_Account__c, 
											Relationship_with_Client__c, 
											Salary_Income__c, 
											Total_Contribution_from_family_members__c, 
											Type_of_Employment__c 
											FROM Family_Employment_Details__c"
			return familyEmploymentDetailsStr;
		end
	#CRM OBJECT_ = "fee__c "
		def getFeeObjName
		  return "fee__c"
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
						  Amount__c, 
						  Currency__c, 
						  Default_fees__c, 
						  Fee_Calculation_Method__c, 
						  Fee_Category__c, 
						  Income_Account__c, 
						  Refundable__c, 
						  State__c, 
						  Suspended_Fee_Account__c, 
						  Time_of_charge__c 
						  FROM Fee__c"
		  return feeStr;
		end
	#CRM OBJECT_ = "fee_junction__c"
		def getFeeJunctionObjName
		  return "fee_junction__c"
		end
	#FEE_JUNCTION_QUERY
		def getFeeJunctionQuery
		  feeJunctionStr ="select Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Fee_Set__c,
							Fee__c
							From fee_junction__c"
		  return feeJunctionStr;
		end
	#CRM OBJECT_ = "fee_set__c"
		def getFeeSetObjName
		  return "fee_set__c"
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
							Fee_Set_Category__c, 
							Number_of_Fees__c
							FROM Fee_Set__c"
			  return feeSetStr;
		end
	#CRM OBJECT_ = "Financial_Education__c"
		def getFinancialEducationObjName
			return "Financial_Education__c"
		end
	#FINANCIAL_EDUCATION_QUERY
		def getFinancialEducationQuery
			financialEducationStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									Attended_Financial_Education__c, 
									Client__c, 
									Date_Attended__c, 
									Interested_in_Financial_Education__c, 
									LastActivityDate, 
									Loan_Account__c, 
									Organization_Attended__c
									FROM Financial_Education__c"
			return financialEducationStr;
		end
	#CRM OBJECT_ = "fiscal_year__c"
		def getFiscalYearObjName
		  return "fiscal_year__c"
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
						End_Date__c, 
						FY_Closing_Balance__c, 
						Fiscal_Year_Setting_Id__c, 
						Start_Date__c, 
						Status__c
						FROM Fiscal_Year__c"
		  return fiscalYearStr;
		end
	#CRM OBJECT_ = "funder__c"
		def getFunderObjName
		  return "funder__c"
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
				Funder_Name__c,
				Address_1__c, 
				Address_2__c, 
				Address_3__c, 
				City__c, 
				Country__c, 
				User__c 
				FROM Funder__c"
		  return funderStr;
		end
	#CRM OBJECT_ = "funder_portfolio__c"
		def getFunderPortfolioObjName
		  return "funder_portfolio__c"
		end
	#FUNDER_PORTFOLIO_QUERY
		def getFunderPortfolioQery
		  funderPortfolioStr = "SELECT  Id,  
					CreatedById,
					LastModifiedById,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					Amount_Funded__c, 
					Amount_Utilized__c, 
					Branch__c, 
					Center__c, 
					Funder__c
					FROM Funder_Portfolio__c"
		  return funderPortfolioStr;
		end
	#CRM OBJECT_ = "group__c"
		def getGroupObjName
		  return "group__c"
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
				Address_Line_1__c, 
				Address_2__c, 
				Address_3__c, 
				Approval_Date__c, 
				Office__c, 
				Center__c, 
				City__c, 
				Country__c, 
				Current_Loan_Officer__c,  
				External_ID__c, 
				Fees_Collected__c, 
				GroupCnt__c, 
				Group_Fee_Set__c, 
				Group_Leader__c, 
				Group_Status__c, 
				Group_System_ID__c, 
				Last_Meeting_Date__c, 
				Assigned_LO__c, 
				Manager__c, 
				Maximum_number_of_persons__c, 
				Meeting_Schedule__c, 
				Minimum_number_of_persons__c, 
				Next_Meeting_Date__c, 
				Notes__c, 
				Question_Groups__c, 
				Source_Loan_Officer__c, 
				State__c, 
				Telephone_No__c, 
				Total_Fees_Charged__c, 
				Trained__c, 
				Trained_On__c, 
				Zipcode__c, 
				Zone__c 
				FROM Group__c"
		  return groupStr;
		end
	#CRM OBJECT_ = "group_position__c "
		def getGroupPositionObjName
		  return "group_position__c"
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
							Name
							FROM Group_Position__c"
		  return groupPositionStr;
		end
	
	#CRM OBJECT_ = "Holiday__c"
		def getHolidayObjName
			return "Holiday__c"
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
						Date__c, 
						Description__c, 
						Frequency__c, 
						Shift_Meeting__c
						FROM Holiday__c"
			return holidayStr;
		end
	#CRM OBJECT_ = "Home_Evaluation__c"
		def getHomeEvaluationObjName
			return "Home_Evaluation__c"
		end
	#HOME_EVALUTATION_QUERY
		def getHomeEvaluationQuery
			homeEvaluationStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								Building_Material__c, 
								Client__c, 
								Condition_of_House__c, 
								Home_Documentation__c,  
								House_hold_assets__c, 
								LastActivityDate, 
								Loan_Account__c, 
								No_of_rooms__c, 
								Number_of_years_at_current_residence__c, 
								Services_Available__c								 
								FROM Home_Evaluation__c"
			return homeEvaluationStr;
		end
	#CRM OBJECT_ = "Insurance_PRoduct__c"
		def getInsurancePRoductObjName
			return "Insurance_PRoduct__c"
		end
	#ISURANCE_PRODUCT_QUERY
		def getInsurancePRoductQuery
			insurancePRoductStr = "SELECT  Id,  
									CreatedById,
									LastModifiedById,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name, 
									Insurance_End_Date__c, 
									Insurance_Fee_Set__c, 
									Insurance_Policy_Number__c, 
									Insurance_Start_Date__c, 
									Loan_Product__c
									FROM Insurance_PRoduct__c"
			return insurancePRoductStr;
		end
	#CRM OBJECT_ = "Interest_On_Overdue_Payment__c"
		def getInterestOnOverduePaymentObjName
			return "Interest_On_Overdue_Payment__c"
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
											Amount__c, 
											LastActivityDate, 
											Loan_Account__c, 
											Posted__c, 
											Transaction_Date__c 
											FROM Interest_On_Overdue_Payment__c"
			return interestOnOverduePaymentStr;
		end
	#CRM OBJECT_ = "Journal__c"
		def getJournalObjName
			return "Journal__c"
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
							Description__c 
							FROM Journal__c"
			return journalStr;
		end
	#CRM OBJECT_ = "loan_account__c"
		def getLoanAccountObjName
		  return "loan_account__c"
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
					group__c,
					co_applicant__c,
					guarantor__c,
					current_loan_officer__c,
					source_loan_officer__c,
					account_type__c,
					savings_product__c,
					savings_account__c,
					closed_date__c,
					first_installment_date__c,
					next_installment_date__c,
					last_installment_date__c,
					previous_installment_date__c,
					aging__c,
					funder__c,
					application_date__c,
					loancnt__c,
					pay_off_amount_as_of_today__c,
					next_repayment_amount_as_of_today__c,
					overdue_amount_as_of_today__c,
					interest_on_overdue_suspended__c,
					fees_suspended__c,
					interest_suspended__c,
					uncleared_written_off_amount__c,
					uncleared_repayment_amount__c,
					uncleared_disbursal_amount__c,
					frequency_of_loan_payment__c,
					expected_repayment_start_date__c,
					repayment_tied_to_meeting_schedule__c,
					interest_on_overdue_paid__c,
					expected_disbursal_date__c,
					branch__c,
					loan_cycle_count__c,
					total_overdue_fees__c,
					suspended__c,
					fee_accrued__c,
					repayments_count__c,
					interest_accrued_not_due__c,
					total_amount_paid__c,
					total_amount_remaining__c,
					loan_status__c,
					fees_remaining__c,
					income_suspended__c,
					interest_on_total_overdue__c,
					interest_calculation_method__c,
					repayment_procedure__c,
					fee_set__c,
					overdue_interest_rate__c,
					penalty_remaining__c,
					number_of_days_overdue__c,
					total_amount_overdue__c,
					overdue_principal__c,
					overdue_penalty__c,
					interest_remaining__c,
					principal_remaining__c,
					overdue_interest__c,
					penalty_paid__c,
					fees_paid__c,
					interest_paid__c,
					principal_paid__c,
					collateral_notes__c,
					collateral_type__c,
					approval_date__c,
					grace_period_for_repayments__c,
					disbursal_date__c,
					number_of_installments__c,
					interest_rate__c,
					loan_amount__c,
					loan_purpose__c,
					Loan_Product_Name__c,
					client__c
					From Loan_Account__c"
			return loanAccountQueryStr;
		end
	#CRM OBJECT_ = "loan_account_history__c"
		def getLoanAccountHistoryObjName
		  return "loan_account_history__c"
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
						loan_purpose__c,
						client__c,
						aging__c,
						previous_installment_date__c,
						next_installment_date__c,
						last_installment_date__c,
						first_installment_date__c,
						interest_on_total_overdue__c,
						fees_overdue__c,
						principal_overdue__c,
						interest_overdue__c,
						fees_remaining__c,
						interest_remaining__c,
						closed_date__c,
						loan_cycle_number__c,
						loan_product__c,
						date__c,
						loan_officer__c,
						branch__c,
						loan_account__c
						From loan_account_history__c"
		  return loanAccountHistoryStr;
		end
	#CRM OBJECT_ = "loan_approval_prerequisites__c"
		def getLoanApprovalPrerequisitedObjName
		  return "loan_approval_prerequisites__c"
		end
	#LOAN_APPROVAL_PREREQUISITES_OBJ_QUERY
		def getLoanApprovalPrerequisitedQuery
		  loanApprovalPrerequisitedStr ="Select Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							track_ratios__c,
							track_balance_sheet__c,
							track_cash_flow__c,
							track_summary_of_income__c,
							track_family_employment_details__c,
							track_other_income__c,
							track_sales_by_product_gross_margin__c,
							track_sales_income_estimate__c,
							track_financial_education__c,
							track_savings_history__c,
							track_home_evaluation__c,
							track_family_details__c,
							track_employment_business_details__c,
							use_sum_of_all_deposits__c,
							minimum_number_of_deposits__c,
							minimum_waiting_time_for_loan__c,
							loan_product__c
							From loan_approval_prerequisites__c"
		  return loanApprovalPrerequisitedStr;
		end
	
	#CRM OBJECT_ = "loan_disbursal_transaction__c"
		def getloanDisbursalTransactionObjName
		  return "loan_disbursal_transaction__c"
		end
	#LOAN_DISBURSAL_TRANSACTION_QUERY
		def getloanDisbursalTransactionQuery
		  loanDisbursalTransactionStr = "Select Id,  
						CreatedById,
						LastModifiedById,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						reversed__c,
						rejected__c,
						cleared__c,
						mode_of_payment__c,
						receipt_id__c,
						disbursal_date__c,
						loan_account__c
						From loan_disbursal_transaction__c"
		  return loanDisbursalTransactionStr;
		end
	#CRM OBJECT_ = "loan_loss_provisioning_setup__c"
		def getLoanLossProvisioningObjName
		  return "loan_loss_provisioning_setup__c"
		end
	#LOAN_LOSS_PROVISIONING_QUERY
		def getLoanLossProvisioningQuery
		  loanLossProvisioningStr = "Select Id,  
						CreatedById,
						LastModifiedById,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
					  loan_product__c,
					  provision_percentage__c,
					  class__c
					  From loan_loss_provisioning_setup__c"
		  return loanLossProvisioningStr;
		end
	#CRM OBJECT_ = "loan_payment_collection__c"
		def getLoanPaymentCollectionObjName
		  return "loan_payment_collection__c"
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
						  id__c,
						  net_total_due_fees__c,
						  attendance__c,
						  interest_on_total_overdue__c,
						  overdue_principal__c,
						  overdue_penalty__c,
						  overdue_fees__c,
						  overdue_interest__c,
						  payment_collected__c,
						  actual_collected_amount__c,
						  loan_account__c,
						  client__c,
						  total_collection_amount__c,
						  due_penalty__c,
						  due_fees__c,
						  due_principal__c,
						  due_interest__c,
						  collection_date__c,
						  repayment_schedule__c
						  From loan_payment_collection__c"
		  return loanPaymentCollectionStr;
		end
	#CRM OBJECT_ = "loan_payment_transaction__c"
		def getLoanPaymentTransactionObjName
		  return "loan_payment_transaction__c"
		end
	#LOAN_PAYMENT_TRANSACTION_QUERY
		def getLoanPaymentTransactionQuery
		  loanPaymentTransactionObjNameStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							  check__c,
							  rejected__c,
							  write_off_recovery_payment__c,
							  cleared__c,
							  payment_mode__c,
							  missed_loan_installment__c,
							  early_total_repayment_of_the_loan__c,
							  early_payment__c,
							  partial_payment_del__c,
							  loan_account__c,
							  receipt_date__c,
							  receipt_id__c,
							  transaction_amount__c,
							  transaction_date__c
							  From loan_payment_transaction__c"
		  return loanPaymentTransactionObjNameStr;
		end
	#CRM OBJECT_ = "loan_product__c"
		def getLoanProductObjName
		  return "loan_product__c"
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
					number_of_prereqs__c,
					savings_product__c,
					last_month_provision__c,
					holiday_shift__c,
					general_rounding_mode__c,
					final_rounding_mode__c,
					final_rounding_precision__c,
					accrue_income_on_suspended_account__c,
					loan_product_type__c,
					max_loan_cycle_number__c,
					loan_cycle_setup__c,
					cash_based_accounting__c,
					initial_rounding_precision__c,
					product_write_off_recovery_account__c,
					product_loan_loss_provision_account__c,
					product_suspended_interest_account__c,
					product_overdue_interest_account__c,
					product_interest_income_account__c,
					product_loan_control_account__c,
					initial_rounding_mode__c,
					digits_after_decimals__c,
					accrual_based_accounting__c,
					max_overdue_interest_rate__c,
					min_overdue_interest_rate__c,
					approval_date__c,
					status__c,
					fee_set__c,
					days_in_a_year__c,
					funder__c,
					frequency_of_loan_payment__c,
					repayment_procedure__c,
					interest_calculation_method__c,
					compare_with_cash_flow__c,
					minimum_installment_amount__c,
					maximum_gap_between_installments__c,
					minimum_gap_between_installments__c,
					product_int_on_overdue_income_acc__c,
					currency__c,
					product_suspended_int_on_overdue_acc__c,
					grace_period_duration__c,
					can_waive_interest_on_prepaid_loan__c,
					default_overdue_interest_rate__c,
					default_interest_rate__c,
					min_interest_rate__c,
					max_interest_rate__c,
					interest_rate_type__c,
					default_number_of_installments__c,
					max_number_of_installments__c,
					min_number_of_installments__c,
					product_loan_loss_reserve_account__c,
					max_loan_amount__c,
					min_loan_amount__c,
					loan_product_code__c
					From loan_product__c"
		  return loanProductStr;
		end
	#CRM OBJECT_ = "loan_product_accounting_setup__c"
		def getLoanProductAccountingSetupObjName
		  return "loan_product_accounting_setup__c"
		end
	#LOAN_PRODUCT_ACCOUNTING_SETUP_QUERY
		def getLoanProductAccountingSetupQuery
		  loanProductAccountingSetupStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							default_rule__c,
							loan_product__c,
							user_defined_rule__c,
							use_default_setup__c,
							business_event__c
							From loan_product_accounting_setup__c"
		  return loanProductAccountingSetupStr;
		end
	#CRM OBJECT_ = "loan_product_cycle__c"
		def getLoanProductCycleObjName
		  return "loan_product_cycle__c"
		end
	#LOAN_PRODUCT_CYCLE_QUERY
		def getLoanProductCycleQuery
		  loanProductCycleStr = "Select Id,  
						CreatedById,
						LastModifiedById,
						CreatedDate, 
						LastModifiedDate,
						IsDeleted, 
						SystemModstamp,
						Name,
						fee_set__c,
						default_overdue_interest_rate__c,
						default_number_of_installments__c,
						default_interest_rate__c,
						min_loan_amount__c,
						cycle_number__c,
						loan_product__c,
						minimum_installment_amount__c,
						minimum_gap_between_installments__c,
						min_overdue_interest_rate__c,
						max_overdue_interest_rate__c,
						min_number_of_installments__c,
						max_number_of_installments__c,
						max_loan_amount__c,
						min_interest_rate__c,
						max_interest_rate__c,
						maximum_gap_between_installments__c
						From loan_product_cycle__c"
		  return loanProductCycleStr;
		end
	#CRM OBJECT_ = "loan_purpose__c"
		def getLoanPurposeObjName
		  return "loan_purpose__c"
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
					description__c,
					loan_purpose_code__c
					From loan_purpose__c"
		  return loanPurposeStr;
		end
	#CRM OBJECT_ = "loan_status__c"
		def getLoanStatusObjName
		  return "loan_status__c"
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
							description__c
							From loan_status__c"
		  return loanStatusStr;
		end
	#CRM OBJECT_ = "loan_write_off_transaction__c"
		def getLoanWriteOffTransactionObjName
		  return "loan_write_off_transaction__c"
		end
	#LOAN_WRITE_OFF_TRANSACTION_QUERY
		def getLoanWriteOffTransactionQuery
		  loanWriteOffTransactionStr = "Select Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							fees_remaining__c,
							rejected__c,
							cleared__c,
							receipt_id__c,
							transaction_date__c,
							total_amount_remaining__c,
							loan_account__c,
							interest_remaining__c,
							principal_remaining__c,
							amount_overdue__c							
							From loan_write_off_transaction__c"
		  return loanWriteOffTransactionStr;
		end
	#CRM OBJECT_ = "loans_history__c"
		def getLoansHistoryObjName
		  return "loans_history__c"
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
							number_of_months_remaining__c,
							emi__c,
							purpose_of_the_loan__c,
							where_do_you_save__c,
							type_of_loan__c,
							lastactivitydate
							From loans_history__c"
		  return loansHistoryStr;
		end	
	#CRM OBJECT_ = "Meeting_Schedule__c"
		def getMeetingScheduleObjName
			return "Meeting_Schedule__c"
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
							Frequency__c, 
							Start_Date__c
							FROM Meeting_Schedule__c"
			return meetingScheduleStr;
		end
	#CRM OBJECT_ = "mf_account__c"
		def getMfAccountObjName
		  return "mf_account__c"
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
				  Acccount_Type_Multiplier__c, 
				  Account_Type__c, 
				  Balance__c, 
				  Branch__c,    
				  Description__c, 
				  FY_Closing_Balance__c, 
				  Fiscal_Year__c, 
				  Is_Master__c, 
				  JV_Allowed__c, 
				  Long_Description__c, 
				  Parent_Account__c,
				  isLeaf__c 
				  FROM MF_Account__c"
		  return mfAccountStr;
		end
	#CRM OBJECT_ = "mf_account_type__c"
		def getMfAccountTypeObjName
		  return "mf_account_type__c"
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
							FROM MF_Account_Type__c"
		  return mfAccountTypeStr;
		end
	#CRM OBJECT_ = "MFError__c"
		def	getMfErrorObjName
			return "MFError__c"
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
							Component__c, 
							Message__c, 
							Type__c 
							FROM MFError__c"
			return mFErrorStr;
		end
	#CRM OBJECT_ = "Month_Process__c"
		def getMonthProcessObjName
			return "Month_Process__c"
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
							Branch__c, 
							Last_Day_of_Month__c, 
							Month_End_Process_Finished__c, 
							Month_End_Process_Started__c, 
							Month_Ended__c
							FROM Month_Process__c"
			return monthProcessStr;
		end
	#CRM OBJECT_ = "Office_Name__c"
		def getOfficeNameObjName
			return "Office_Name__c"
		end
	#OFFICE__QUERY
		def getOfficeNameQuery
			officeNameStr = "SELECT	Id,  
							CreatedById,
							LastModifiedById,
							OwnerId,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Bank_Account_Checks__c, 
							Check_Account__c, 
							Office_Name_ID__c, 
							Office_Location__c, 
							Office_Short_Name__c, 
							Office_Type__c, 
							Cash_Account__c, 
							Current_System_Date__c, 
							Days_in_advance_to_create_Collection_Rep__c, 
							Inward_Check_Clearance_Account__c, 
							Is_Branch__c, 
							Loan_Schedule_tied_to_Meeting_Schedule__c, 
							Mark_Suspended_After_Days__c, 
							Outward_Check_Clearance_Account__c, 
							Parent_Office__c, 
							Profit_and_Loss_Account__c, 
							State__c, 
							Write_Off_Suggestion_Days__c 
							FROM Office_Name__c"
			return officeNameStr;
		end
	#CRM OBJECT_ = "Office_Type__c"
		def getOfficeTypeObjName 
			return "Office_Type__c"
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
							Office_Type_Short_Code__c, 
							Office_Type_ID__c
							FROM Office_Type__c"
			return officeTypeStr;
		end
	#CRM OBJECT_ = "Overdue_Fee__c"
		def getOverdueFeeObjName
			return "Overdue_Fee__c"
		end
	#OVERDUE_FEE_QUERY
		def getOverdueFeeQuery
			overdueFeeStr = "SELECT	Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Fee__c,  
							Loan_Account__c, 
							Overdue_Amount__c
							FROM Overdue_Fee__c"
			return overdueFeeStr;
		end
	#CRM OBJECT_ = "Paid_Fee__c"
		def getPaidFeeObjName
			return "Paid_Fee__c"
		end
	#PAID_FEE_QUERY
		def getPaidFeeQuery
			paidFeeStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Fee__c, 
							Paid_Fee_Amount__c,
							Repayment_Schedule__c
							FROM Paid_Fee__c"
			return paidFeeStr;
		end
	#CRM OBJECT_ = "Payment_Mode__c"
		def getPaymentModeObjName
			return "Payment_Mode__c"
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
							FROM Payment_Mode__c"
			return paymentModeStr;
		end
	#CRM OBJECT_ = "Poverty_Likelihood_Chart__c"
		def getPovertyLikelihoodChartObjName
			return "Poverty_Likelihood_Chart__c"
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
										Bottom_Half_Below_National_Poverty_Line__c, 
										Country__c, 
										Max_PPI_Score__c, 
										Min_PPI_Score__c,  
										Top_Half_Below_National_Poverty_Line__c, 
										Total_Above_National_Poverty_Line__c, 
										Total_Below_National_Poverty_Line__c 
										FROM Poverty_Likelihood_Chart__c"
			return povertyLikelihoodChartStr;
		end
	#CRM OBJECT_ = "PPI__c"
		def getPPIObjName
			return "PPI__c"
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
					Evaluation_Start_Date__c, 
					Number_of_Households_Clients__c, 
					Question_Set__c
					FROM PPI__c"
			return pPIStr;
		end
	#CRM OBJECT_ = "PPI_Household_Data__c"
		def getPPIHouseholdDataObjName
			return "PPI_Household_Data__c"
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
							Client__c, 
							Interview_Date__c, 
							Interview_Duration__c, 
							PPI__c, 
							Staff__c, 
							Total_Loan_Amount__c, 
							Total_Weight__c 
							FROM PPI_Household_Data__c"
			return pPIHouseholdDataStr;
		end
	#CRM OBJECT_ = "PPI_Indicator__c"
		def getPPIIndicatorObjName 
			return "PPI_Indicator__c"
		end
	#PPI_INDICATOR_QUERY
		def getPPIIndicatorQuery
			pPIIndicatorStr = "SELECT Id,  
								CreatedById,
								LastModifiedById,
								CreatedDate, 
								LastModifiedDate,
								IsDeleted, 
								SystemModstamp,
								Name,
								PPI_Name__c,
								Answer_Choice__c, 
								PPI__c, 
								Question__c, 
								Question_Text__c, 
								Weight__c 
								FROM PPI_Indicator__c"
			return pPIIndicatorStr;
		end		
	#CRM OBJECT_ = "PPIChartCountryAndYear__c"
		def getPPIChartCountryAndYearObjName
			return "PPIChartCountryAndYear__c"
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
							Year__c 
							FROM PPIChartCountryAndYear__c"
			return pPIChartCountryAndYearStr;
		end
	#CRM OBJECT_ = "Product_Category__c"
		def getProductCategoryObjName
			return "Product_Category__c"
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
									Description__c, 
									Product_Type__c, 
									Status__c
									FROM Product_Category__c"
			return productCategoryStr;
		end
	#CRM OBJECT_ = "Question__c"
		def getQuestionObjName
			return "Question__c"
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
							Answer_Type__c, 
							Options__c, 
							Question__c, 
							State__c
							FROM Question__c"
			return questionObjNameStr;
		end
	#CRM OBJECT_ = "Question_Set__c"
		def getQuestionSetObjName
			return "Question_Set__c"
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
							FROM Question_Set__c"
			return questionSetStr;
		end
	#CRM OBJECT_ = "Question_Junction__c"
		def getQuestionJunctionObjName
			return "Question_Junction__c"
		end
	#QUESTION_JUNCTION_QUERY
		def getQuestionJunctionQuery
			questionJunctionStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							Question__c, 
							Question_Set__c
							FROM Question_Junction__c"
			return questionJunctionStr;
		end
	#CRM OBJECT_ = "Quick_Link__c"
		def getQuickLinkObjName
			return "Quick_Link__c"
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
							Page_URL__c, 
							Section__c
							FROM Quick_Link__c"
			return quickLinkStr;
		end
	#CRM OBJECT_ = "Recovery_Order__c"
		def getRecoveryOrderObjName
			return "Recovery_Order__c"
		end
	#RECOVERY_ORDER_QUERY
		def getRecoveryOrderQuery
			recoveryOrderStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Amount_Type__c, 
							Loan_Product__c, 
							Order_Number__c
							FROM Recovery_Order__c"
			return recoveryOrderStr;
		end
	#CRM OBJECT_ = "Repayment_Schedule__c"
		def getRepaymentScheduleObjName
			return "Repayment_Schedule__c"
		end
	#REPAYMENT_SCHEDULE_QUERY
		def getRepaymentScheduleQuery
			repaymentScheduleStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									Balance__c, 
									Barcode_Subtype__c, 
									Barcode_Type__c, 
									Date_Paid__c, 
									Due_Date__c, 
									Due_Interest__c, 
									Due_Interest_On_Overdue__c, 
									Due_Principal__c, 
									Id__c, 
									Interest_Accrued_Not_Due__c, 
									Is_Archived__c, 
									Is_Partially_Paid__c, 
									Loan_Account__c, 
									Paid_Fees__c, 
									Paid_Interest__c, 
									Paid_Interest_On_Overdue__c, 
									Paid_Principal__c, 
									Paid_Total__c, 
									Total_Due_Fees__c, 
									Total_Installment__c, 
									Total_Paid_Fees__c, 
									Transaction_Amount__c, 
									Unpaid_Fees__c, 
									Unpaid_Installment__c, 
									Unpaid_Interest__c, 
									Unpaid_Overdue_Interest__c, 
									Unpaid_Principal__c, 
									isPaid__c 
									FROM Repayment_Schedule__c"
			return repaymentScheduleStr;
		end
	#CRM OBJECT_ = "Repayment_Transaction_Adjustment__c"
		def getRepaymentTransactionAdjustmentObjName
			return "Repayment_Transaction_Adjustment__c"
		end
	#REPAYMENT_TRANSACTION_ADJUSTMENT_QUERY
		def getRepaymentTransactionAdjustmentQuery
			repaymentTransactionAdjustmentStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Adjustment_Txn_Date__c, 
							Cleared__c, 
							Loan_Payment_Transaction__c, 
							Receipt_ID__c, 
							Rejected__c
							FROM Repayment_Transaction_Adjustment__c"
			return repaymentTransactionAdjustmentStr;
		end
	#CRM OBJECT_ = "Sales_Income_Estimate__c"
		def getSalesIncomeEstimateObjName
			return "Sales_Income_Estimate__c"
		end
	#SALES_INCOME_ESTIMATE_QUERY
		def getSalesIncomeEstimateStr
			salesIncomeEstimateStr = "SELECT Id,  
									CreatedById,
									LastModifiedById,
									CreatedDate, 
									LastModifiedDate,
									IsDeleted, 
									SystemModstamp,
									Name,
									Average_Sales_Daily__c, 
									Average_Sales_Monthly__c, 
									Average_Sales_Weekly__c, 
									CLIENTS_FAMILY_MEMBERS_SALARY_INCOME__c, 
									Client__c, 
									Contact_of_Employer__c,
									Employee__c, 
									Employers_Details_Add_multiple__c, 
									LastActivityDate, 
									Loan_Account__c, 
									Monthly_Salary__c, 
									Name_and_Address_of_Employer__c, 
									No_of_years_in_Service__c, 
									Sales_are__c,
									TOTAL_SALARY_A__c 
									FROM Sales_Income_Estimate__c"
			return salesIncomeEstimateStr;
		end
	#CRM OBJECT_="Savings_Account__c"
		def getSavingsAccountObjName
		  return "Savings_Account__c"  
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
					  Approval_Date__c, 
					  Balance__c, 
					  Branch__c, 
					  Center__c, 
					  Client_ID__c, 
					  Deposit_Start_Date__c, 
					  Fee_Set__c, 
					  Fixed_Deposit_Amount__c, 
					  Fixed_Deposit_End_Date__c, 
					  Group__c, 
					  Interest_to_be_Posted__c, 
					  Last_Deposit_Date__c, 
					  Linked_Savings_Account__c, 
					  Minimum_Balance__c, 
					  Next_Calc_Date__c, 
					  Next_Posting_Date__c,
					  Recommended_Mandatory_Amnt_for_Deposits__c,  
					  Status__c, 
					  Total_Deposit__c, 
					  Total_Interest_Earned__c, 
					  Total_Overdue__c, 
					  Total_Withdrawal__c, 
					  Uncleared_Check_Deposit__c, 
					  Uncleared_Check_Withdrawal__c, 
					  Uncleared_Deposit_Amount__c, 
					  Uncleared_Withdrawal_Amount__c 
					  FROM Savings_Account__c"
		  return savingsAccountQueryStr;
		  end
	#CRM OBJECT_ = "savings_account_interest__c"
		def getSavingsAccountInterestObjName
		  return "savings_account_interest__c"
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
							Date__c,
							Interest_To_Be_Posted__c,
							Posted__c, 
							Savings_Account__c
							FROM Savings_Account_Interest__c"
		 return savingAccountInterestStr
		end
	#CRM OBJECT_ = "savings_payment_collection_record__c"
		def getSavingsPaymentCollectionRecordObjName
		  return "savings_payment_collection_record__c"
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
							  Actual_Collected_Amount__c, 
							  Check__c, 
							  Client__c, 
							  Collection_Date__c, 
							  Mandatory_Payment__c, 
							  Overdues__c,
							  Payment_Mode__c, 
							  Savings_Account__c, 
							  Total_Collection_Amount__c 
							  FROM Savings_Payment_Collection_Record__c"
		  return savingsPaymentCollectionRecordStr;
		end
	#CRM OBJECT_ = "Savings_Payment_Transaction__c"
		def getSavingsPaymentTransactionObjName
			return "Savings_Payment_Transaction__c"
		end
	#SAVINGS_PAYMENT_TRANSACTION_QUERY
		def getSavingsPaymentTransactionQuery
			savingsPaymentTransactionStr = "SELECT Id,  
											CreatedById,
											LastModifiedById,
											CreatedDate, 
											LastModifiedDate,
											IsDeleted, 
											SystemModstamp,
											Name,
											Balance_After__c, 
											Check__c, 
											Check_Status__c, 
											Cleared__c, 
											Description__c, 
											Is_System_Generated__c,  
											Partial_Payment__c, 
											Payment_Mode__c, 
											Receipt_Date__c, 
											Receipt_ID__c,
											Rejected__c, 
											Savings_Account__c,  
											Terminate_Fixed_Deposit__c, 
											Transaction_Amount__c, 
											Transaction_Date__c, 
											Transaction_Type__c 
											FROM Savings_Payment_Transaction__c"
			return savingsPaymentTransactionStr;
		end
	#CRM OBJECT_ = "savings_product__c"
		def getSavingsProductObjName
		  return "savings_product__c"
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
					Accrued_Interest_Payable_Account__c, 
					Allow_Early_Withdrawals__c, 
					Amount_applies_to__c, 
					Approval_Date__c, 
					Balance_Used_for_Int_Rate_Calculation__c,  
					Deposit_Frequency__c, 
					Fee_Set__c, 
					Fixed_Deposit_Term__c, 
					Frequency_of_Interest_Posting_to_Account__c, 
					Frequency_of_Int_Rate_Calc__c, 
					Interest_Expense_Account__c, 
					Interest_Payable_Account__c, 
					Interest_Rate__c, 
					Maintenance_Fees__c,
					Amount_for_Deposit__c, 
					Max_Amount_Per_Withdrawal__c, 
					Min_Balance_Required_for_Interest_Rate_c__c,  
					Type_of_Deposits__c, 
					Product_Type__c,			
					Savings_Product_Control_Account__c, 
					Start_Date__c, 
					Status__c, 
					Time_Period_for_Int_Rate_Calculation__c, 
					Type_of_Owner__c
					FROM Savings_Product__c"
		  return savingsProductStr;
		end
	#CRM OBJECT_ = "savings_product_accounting_setup__c"
		def getSavingsProductAccountingSetupObjName
		  return "savings_product_accounting_setup__c"
		end
	#SAVINGS_PRODUCT_ACCOUNTING_SETUP_QUERY
		def getSavingsProductAccountingSetupQuery
		  savingsProductAccountingSetupStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name, 
							Business_Event__c, 
							Default_Rule__c, 
							Savings_Product__c,
							Use_Default_Setup__c, 
							User_Defined_Rule__c 
							FROM Savings_Product_Accounting_Setup__c"
		  return savingsProductAccountingSetupStr;
		end
	#CRM OBJECT_ = "savings_withdrawal_transaction__c"
		def getSavingsWithdrawalTransactionObjName
		  return "savings_withdrawal_transaction__c"
		end
	#SAVINGS_WITHDRAWAL_TRANSACTION_QUERY
		def getSavingsWithdrawalTransactionQuery
		  savingsWithdrawalTransactionStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Receipt_Date__c, 
							Receipt_ID__c, 
							Savings_Account__c,
							Withdrawal_Amount__c, 
							Withdrawal_Date__c 
							FROM Savings_Withdrawal_Transaction__c"
		  return savingsWithdrawalTransactionStr;
		end
	#CRM OBJECT_ = "Scheduled_Queries__c"
		def getScheduledQueriesObjName
			return "Scheduled_Queries__c"
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
							ObjectApiName__c,
							Completed_Runs__c, 
							Run_Every_Units__c, 
							Description__c, 
							Query__c, 
							Run_Every__c, 
							Scheduled_Date__c, 
							ScheduledDate__c, 
							Unfinished_Runs__c 
							FROM Scheduled_Queries__c"
			return scheduledQueriesStr;
		end
	#CRM OBJECT_ = "Search__c"
		def getSearchObjName
			return "Search__c"
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
						Accounting_Rule__c, 
						Branch__c, 
						Center__c, 
						Check__c, 
						Client__c,  
						Date__c, 
						End_Date__c, 
						Group__c, 
						Loan_Account__c, 
						Loan_Product__c, 
						Report__c, 
						Report_Type__c, 
						Savings_Account__c, 
						Savings_Product__c, 
						Start_Date__c, 
						Transaction_Source__c, 
						User__c, 
						Document_Number__c 
						FROM Search__c"
			return searchStr;
		end
	#CRM OBJECT_ = "Staff__c"
		def getStaffObjName
			return "Staff__c"
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
						Address_Line_1__c, 
						Address_Line_2__c, 
						Branch__c, 
						City__c, 
						Country__c, 
						First_Name__c, 
						Last_Name__c, 
						Phone_Number__c, 
						Role__c, 
						State__c
						FROM Staff__c"
			return staffStr;
		end
	#CRM OBJECT_ = "Start_Here__c"
		def getStartHereObjName
			return "Start_Here__c"
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
							FROM Start_Here__c"
			return startHereStr;
		end
	#CRM OBJECT_ = "transaction__c"
		def getTrasactionObjName
		  return "transaction__c"
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
							Branch__c, 
							Client__c, 
							Group__c, 
							Id__c, 
							JV_Transaction__c, 
							Journal__c, 
							Posted__c, 
							Rejected__c, 
							System_Generated__c, 
							Transaction_Date__c, 
							Transaction_Header_Writeable__c, 
							Transaction_Source__c, 
							Document_Number__c 
							FROM Transaction__c"
		  return transactionStr;
		end
	#CRM OBJECT_ = "transaction_entry__c"
		def getTransactionEntryObjName
		  return "transaction_entry__c"
		end
	#TRANSACTION_ENTRY_QUERY
		def getTransactionEntryQuery
		  transactoinEntryStr = "SELECT Id,  
					CreatedById,
					LastModifiedById,
					CreatedDate, 
					LastModifiedDate,
					IsDeleted, 
					SystemModstamp,
					Name,
					  Closing_Balance__c, 
					  Credit__c, 
					  Debit__c, 
					  Description__c, 
					  Id__c, 
					  MF_Account__c, 
					  Opening_Balance__c, 
					  Readonly__c, 
					  Savings_Sub_Ledger__c, 
					  Sub_Ledger__c, 
					  ToBeDeleted__c, 
					  Transaction__c
					  FROM Transaction_Entry__c"
		  return transactoinEntryStr;
		end
	#CRM OBJECT_ = "transaction_source__c"
		def getTransactionSourceObjName
		  return "transaction_source__c"
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
							FROM Transaction_Source__c"
		  return transactionSourceStr;
		end
	#CRM OBJECT_ = "user_branch_info__c"
		def getUserBranchInfoObjName
		  return "user_branch_info__c"
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
							Branch__c, 
							Default_Branch__c, 
							User__c
							FROM User_Branch_Info__c"
		  return userBranchInfoStr;
		end
	#CRM OBJECT_ = "Users_Quick_Links__c"
		def getUsersQuickLinksObjName
			return "Users_Quick_Links__c"
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
							Quick_Links__c,			 
							User__c
							FROM Users_Quick_Links__c"
			return usersQuickLinksStr;
		end
	#CRM OBJECT_ = "Value_Set_Values__c"
		def getValueSetValuesObjName
			return "Value_Set_Values__c"
		end
	#VALUE_SET_VALUES_QUERY
		def getValueSetValuesQuery
			valueSetValuesStr = "SELECT Id,  
							CreatedById,
							LastModifiedById,
							CreatedDate, 
							LastModifiedDate,
							IsDeleted, 
							SystemModstamp,
							Name,
							Description__c, 
							Effective_From__c, 
							Effective_To__c, 
							Id__c,
							Set_id__c, 
							Value_Set__c 
							FROM Value_Set_Values__c"
			return valueSetValuesStr;
		end
	#CRM OBJECT_ = "Value_Sets__c"
		def getValueSetsObjName
			return "Value_Sets__c"
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
							Description__c, 
							Effective_from__c, 
							Effective_to__c, 
							Set_id__c
							FROM Value_Sets__c"
			return valueSetsStr;
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
			return sfLma__LicenseStr;
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
			return sfLma__PackageStr;
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
			return sfLma__PackageVersionStr;
		end
end