module MFiFlexConstants
      
	#CRM objects
	#CLIENT_OBJ_NAME="mfiforce__Client__c"
		def getClientObjName
			return "mfiforce__Client__c"  
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
                            mfiforce__group__c,
                            mfiforce__salutation__c,
                            mfiforce__first_name__c ,
                            mfiforce__middle_name__c ,
                            mfiforce__last_name__c ,
                            mfiforce__government_id__c ,
                            mfiforce__date_of_birth__c ,
                            mfiforce__gender__c,
                            mfiforce__marital_status__c,
                            mfiforce__number_of_children__c,
                            mfiforce__citizenship__c,
                            mfiforce__ethnicity__c,
                            mfiforce__education_level__c,
                            mfiforce__business_activity__c,
                            mfiforce__handicapped__c,
                            mfiforce__spouse_father_s_first_name__c ,
                            mfiforce__spouse_father_s_middle_name__c ,
                            mfiforce__spouse_father_s_last_name__c ,
                            mfiforce__spouse_or_father__c,
                            mfiforce__client_start_date__c ,
                            mfiforce__address_1__c ,
                            mfiforce__address_2__c ,
                            mfiforce__address_3__c ,
                            mfiforce__city__c,
                            mfiforce__zipcode__c,
                            mfiforce__telephone_no__c ,
                            mfiforce__notes__c ,
                            mfiforce__status__c,
                            mfiforce__loan_officer__c,
                            mfiforce__trained__c ,
                            mfiforce__office__c,
                            mfiforce__id_count__c,
                            mfiforce__country__c,
                            mfiforce__state__c,
                            mfiforce__vicinity__c ,
                            mfiforce__approval_date__c ,
                            mfiforce__fee_set__c,
                            mfiforce__total_fees_charged__c ,
                            mfiforce__fees_collected__c ,
                            mfiforce__religion__c ,
                            mfiforce__center__c,
                            mfiforce__home_town__c ,
                            mfiforce__district__c,
                            mfiforce__nominee__c,
                            mfiforce__clientcnt__c,
                            mfiforce__zone__c,
                            mfiforce__check_for_duplicates__c,
                            mfiforce__source_loan_officer__c,
                            mfiforce__current_loan_officer__c,
                            mfiforce__employment_business_details_count__c,
                            mfiforce__home_evaluation_count__c,
                            mfiforce__financial_education__c,
                            mfiforce__sales_income_estimate_count__c,
                            mfiforce__family_employment_details_count__c,
                            mfiforce__client_training__c,
                            mfiforce__ismember__c,
                            mfiforce__new_field__c,
                            mfiforce__isbioscanregistered__c
                            from mfiforce__client__c"
                                                        
          return clientQueryStr;
      end
      
	 #GROUP_OBJ_NAME = "mfiforce__Group__c"
	  def getGroupObjName
        return "mfiforce__Group__c"  
    end
	 #GROUP_OBJ_QUERY 
    def getGroupQuery 
		groupQueryStr="SELECT Id, mfiforce__Address_Line_1__c, 
								mfiforce__Address_2__c, 
								mfiforce__Address_3__c, 
								mfiforce__Approval_Date__c, 
								mfiforce__Office__c, 
								mfiforce__Center__c, 
								mfiforce__City__c, 
								mfiforce__Country__c, 
								CreatedById, 
								CreatedDate, 
								mfiforce__Current_Loan_Officer__c, 
								IsDeleted, mfiforce__External_ID__c, 
								mfiforce__Fees_Collected__c, 
								mfiforce__GroupCnt__c, 
								mfiforce__Group_Fee_Set__c, 
								mfiforce__Group_Leader__c, 
								Name, mfiforce__Group_Status__c, 
								mfiforce__Group_System_ID__c, 
								mfiforce__Last_Meeting_Date__c, 
								LastModifiedById, 
								LastModifiedDate, 
								mfiforce__Assigned_LO__c, 
								mfiforce__Manager__c, 
								mfiforce__Maximum_number_of_persons__c, 
								mfiforce__Meeting_Schedule__c, 
								mfiforce__Minimum_number_of_persons__c, 
								mfiforce__Next_Meeting_Date__c, 
								mfiforce__Notes__c, OwnerId, 
								mfiforce__Question_Groups__c, 
								mfiforce__Source_Loan_Officer__c, 
								mfiforce__State__c, 
								SystemModstamp, 
								mfiforce__Telephone_No__c, 
								mfiforce__Total_Fees_Charged__c, 
								mfiforce__Trained__c, 
								mfiforce__Trained_On__c, 
								mfiforce__Zipcode__c, 
								mfiforce__Zone__c 
								FROM mfiforce__Group__c"
      return groupQueryStr;
	  end      
	 
	  #CENTER_OBJ_NAME = "mfiforce__Center__c"
	  def getCenterObjName
      return "mfiforce__Center__c"  
    end
	  
	  #CENTER_OBJ_QUERY
		def getCenterQuery
			centerQueryStr=" select id,
								mfiforce__current_loan_officer__c,
								mfiforce__source_loan_officer__c,
								mfiforce__loan_officer__c,
								mfiforce__centercnt__c,
								mfiforce__center_leader__c,
								mfiforce__location__c,
								mfiforce__meeting_schedule__c,
								mfiforce__branch__c,
								mfiforce__manager__c,
								systemmodstamp,
								lastmodifiedbyid,
								lastmodifieddate,
								createdbyid,
								createddate,
								name,
								isdeleted,
								ownerid
								From mfiforce__Center__c"
      return centerQueryStr;
	  end
	#LOANACCOUNT_OBJ_NAME = "mfiforce__loan_account__c"
		def getLoanAccountObjName
			return "mfiforce__loan_account__c"
		end
	#LOANACCOUNT_OBJ_QUERY
		def getLoanAccountQuery
			loanAccountQueryStr="Select Id, 
								mfiforce__is_rescheduled__c,
								mfiforce__new_field_3__c,
								mfiforce__average_monthly_income__c,
								mfiforce__group__c,
								mfiforce__co_applicant__c,
								mfiforce__guarantor__c,
								mfiforce__current_loan_officer__c
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
								mfiforce__loan_product_name__c,
								mfiforce__loan_purpose__c,
								mfiforce__client__c,
								systemmodstamp,
								lastmodifiedbyid,
								lastmodifieddate,
								createdbyid,
								createddate,
								name,
								isdeleted,
								ownerid
								From mfiforce__Loan_Account__c"
        return loanAccountQueryStr;
		end
	#LOANACCOUNTHISTORY_OBJ_NAME = "mfiforce__loan_account_history__c"
		def getLoanAccountHistoryObjName
			return "mfiforce__loan_account_history__c"
		end
	#LOANACCOUNTHISTORY_OBJ_QUERY
		def getLoanAccountHistoryQuery
			loanAccountHistoryStr="Select Id,
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
										mfiforce__loan_account__c,
										systemmodstamp,
										lastmodifiedbyid,
										lastmodifieddate,
										createdbyid,
										createddate,
										name,
										isdeleted,
										ownerid
										From mfiforce__loan_account_history__c"
			return loanAccountHistoryStr;
		end
	#LOAN_APPROVAL_PREREQUISITES_OBJ_NAME = "mfiforce__loan_approval_prerequisites__c"
		def getLoanApprovalPrerequisitedObjName
			return "mfiforce__loan_approval_prerequisites__c"
		end
	#LOAN_APPROVAL_PREREQUISITES_OBJ_QUERY
		def getLoanApprovalPrerequisitedQuery
			loanApprovalPrerequisitedStr ="Select Id,
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
												systemmodstamp,
												lastmodifiedbyid,
												lastmodifieddate,
												createdbyid,
												createddate,
												name,
												isdeleted,
												ownerid
												From mfiforce__loan_approval_prerequisites__c"
			return loanApprovalPrerequisitedStr;
		end
	#LOAN_BALANCE_S_SNAPSHOT_OBJ_NAME = "mfiforce__loan_balance_s_snapshot__c"
		def getLoanBalanceSSnapshotObjName
			return "mfiforce__loan_balance_s_snapshot__c"
		end
	#LOAN_BALANCE_S_SNAPSHOT_QUERY
		def getLoanBalanceSSnapshotQuery
			loanBalanceSSnapshotStr="Select Id,
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
										mfiforce__loan_payment_transaction__c,
										systemmodstamp,
										lastmodifiedbyid,
										lastmodifieddate,
										createdbyid,
										createddate,
										name,
										isdeleted,
										ownerid
									From mfiforce__loan_balance_s_snapshot__c"
			return loanBalanceSSnapshotStr;
		end
	#LOAN_DISBURSAL_TRANSACTION_OBJ_NAME = "mfiforce__loan_disbursal_transaction__c"
		def getloanDisbursalTransactionObjName
			return "mfiforce__loan_disbursal_transaction__c"
		end
	#LOAN_DISBURSAL_TRANSACTION_QUERY
		def getloanDisbursalTransactionQuery
			loanDisbursalTransactionStr = "Select Id,
											mfiforce__reversed__c,
											mfiforce__rejected__c,
											mfiforce__cleared__c,
											mfiforce__mode_of_payment__c,
											mfiforce__receipt_id__c,
											mfiforce__disbursal_date__c,
											mfiforce__loan_account__c,
											systemmodstamp,
											lastmodifiedbyid,
											lastmodifieddate,
											createdbyid,
											createddate,
											name,
											isdeleted,
											ownerid
											From mfiforce__loan_disbursal_transaction__c"
			return loanDisbursalTransactionStr;
		end
	#LOAN_LOSS_PROVISIONING_OBJ_NAME = "mfiforce__loan_loss_provisioning_setup__c"
		def getLoanLossProvisioningObjName
			return "mfiforce__loan_loss_provisioning_setup__c"
		end
	#LOAN_LOSS_PROVISIONING_QUERY
		def getLoanLossProvisioningQuery
			loanLossProvisioningStr = "Select Id,
											mfiforce__loan_product__c,
											mfiforce__provision_percentage__c,
											mfiforce__class__c,
											systemmodstamp,
											lastmodifiedbyid,
											lastmodifieddate,
											createdbyid,
											createddate,
											name,
											isdeleted,
											ownerid
											From mfiforce__loan_loss_provisioning_setup__c"
			return loanLossProvisioningStr;
		end
	#LOAN_PAYMENT_COLLECTION_OBJ_NAME = "mfiforce__loan_payment_collection__c"
		def getLoanPaymentCollectionObjName
			return "mfiforce__loan_payment_collection__c"
		end
	#LOAN_PAYMENT_COLLECTION_QUERY 
		def getLoanPaymentCollectionQuery
			loanPaymentCollectionStr ="Select Id,
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
											mfiforce__repayment_schedule__c,
											systemmodstamp,
											lastmodifiedbyid,
											lastmodifieddate,
											createdbyid,
											createddate,
											name,
											isdeleted,
											ownerid
											From mfiforce__loan_payment_collection__c"
			return loanPaymentCollectionStr;
		end
	#LOAN_PAYMENT_TRANSACTION_OBJ_NAME = "mfiforce__loan_payment_transaction__c"
		def getLoanPaymentTransactionObjName
			return "mfiforce__loan_payment_transaction__c"
		end
	#LOAN_PAYMENT_TRANSACTION_QUERY
		def getLoanPaymentTransactionQuery
			loanPaymentTransactionObjNameStr = "Select Id,
													mfiforce__c,heck__c,
													mfiforce__rejected__c,
													mfiforce__write_off_recovery_payment__c,
													mfiforce__c,leared__c,
													mfiforce__payment_mode__c,
													mfiforce__missed_loan_installment__c,
													mfiforce__early_total_repayment_of_the_loan__c,
													mfiforce__early_payment__c,
													mfiforce__partial_payment_del__c,
													mfiforce__loan_account__c,
													mfiforce__receipt_date__c,
													mfiforce__receipt_id__c,
													mfiforce__transaction_amount__c,
													mfiforce__transaction_date__c,
													systemmodstamp,
													lastmodifiedbyid,
													lastmodifieddate,
													createdbyid,
													createddate,
													name,
													isdeleted,
													ownerid
													From mfiforce__loan_payment_transaction__c"
			return loanPaymentTransactionObjNameStr;
		end
	#LOAN_PRODUCT_OBJ_NAME = "mfiforce__loan_product__c"
		def getLoanProductObjName
			return "mfiforce__loan_product__c"
		end
	#LOAN_PRODUCT_QUERY
		def getLoanProductQuery
			loanProductStr="Select Id,
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
								mfiforce__c,ash_based_accounting__c,
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
								mfiforce__c,ompare_with_cash_flow__c,
								mfiforce__minimum_installment_amount__c,
								mfiforce__maximum_gap_between_installments__c,
								mfiforce__minimum_gap_between_installments__c,
								mfiforce__product_int_on_overdue_income_acc__c,
								mfiforce__c,urrency__c,
								mfiforce__product_suspended_int_on_overdue_acc__c,
								mfiforce__grace_period_duration__c,
								mfiforce__c,an_waive_interest_on_prepaid_loan__c,
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
								mfiforce__loan_product_code__c,
								systemmodstamp,
								lastmodifiedbyid,
								lastmodifieddate,
								createdbyid,
								createddate,
								name,
								isdeleted,
								ownerid
								From mfiforce__loan_product__c"
			return loanProductStr;
		end
	#LOAN_PRODUCT_ACCOUNTING_SETUP_OBJ_NAME = "mfiforce__loan_product_accounting_setup__c"
		def getLoanProductAccountingSetupObjName
			return "mfiforce__loan_product_accounting_setup__c"
		end
	#LOAN_PRODUCT_ACCOUNTING_SETUP_QUERY
		def getLoanProductAccountingSetupQuery
			loanProductAccountingSetupStr = "Select Id,
												mfiforce__default_rule__c,
												mfiforce__loan_product__c,
												mfiforce__user_defined_rule__c,
												mfiforce__use_default_setup__c,
												mfiforce__business_event__c,
												systemmodstamp,
												lastmodifiedbyid,
												lastmodifieddate,
												createdbyid,
												createddate,
												name,
												isdeleted,
												ownerid
												From mfiforce__loan_product_accounting_setup__c"
			return loanProductAccountingSetupStr;
		end
	#LOAN_PRODUCT_CYCLE_OBJ_NAME = "mfiforce__loan_product_cycle__c"
		def getLoanProductCycleObjName
			return "mfiforce__loan_product_cycle__c"
		end
	#LOAN_PRODUCT_CYCLE_QUERY
		def getLoanProductCycleQuery
			loanProductCycleStr = "Select Id,
										mfiforce__fee_set__c,
										mfiforce__default_overdue_interest_rate__c,
										mfiforce__default_number_of_installments__c,
										mfiforce__default_interest_rate__c,
										mfiforce__min_loan_amount__c,
										mfiforce__c,ycle_number__c,
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
										mfiforce__maximum_gap_between_installments__c,
										systemmodstamp,
										lastmodifiedbyid,
										lastmodifieddate,
										createdbyid,
										createddate,
										name,
										isdeleted,
										ownerid
										From mfiforce__loan_product_cycle__c"
			return loanProductCycleStr;
		end
	#LOAN_PURPOSE_OBJ_NAME = "mfiforce__loan_purpose__c"
		def getLoanPurposeObjName
			return "mfiforce__loan_purpose__c"
		end
	#LOAN_PURPOSE_QUERY
		def getLoanPurposeQuery
			loanPurposeStr = "Select Id,
									mfiforce__description__c,
									mfiforce__loan_purpose_code__c,
									systemmodstamp,
									lastmodifiedbyid,
									lastmodifieddate,
									createdbyid,
									createddate,
									name,
									isdeleted,
									ownerid
									From mfiforce__loan_purpose__c"
			return loanPurposeStr;
		end
	#LOAN_STATUS_OBJ_NAME = "mfiforce__loan_status__c"
		def getLoanStatusObjName
			return "mfiforce__loan_status__c"
		end
	#LOAN_STATUS_QUERY
		def getLoanStatusQuery
			loanStatusStr = "Select Id,
								mfiforce__description__c,
								systemmodstamp,
								lastmodifiedbyid,
								lastmodifieddate,
								createdbyid,
								createddate,
								name,
								isdeleted,
								ownerid
								From mfiforce__loan_status__c"
			return loanStatusStr;
		end
	#LOAN_WRITE_OFF_TRANSACTION_OBJ_NAME = "mfiforce__loan_write_off_transaction__c"
		def getLoanWriteOffTransactionObjName
			return "mfiforce__loan_write_off_transaction__c"
		end
	#LOAN_WRITE_OFF_TRANSACTION_QUERY
		def getLoanWriteOffTransactionQuery
			loanWriteOffTransactionStr = "Select Id,
												mfiforce__fees_remaining__c,
												mfiforce__rejected__c,
												mfiforce__c,leared__c,
												mfiforce__receipt_id__c,
												mfiforce__transaction_date__c,
												mfiforce__total_amount_remaining__c,
												mfiforce__loan_account__c,
												mfiforce__interest_remaining__c,
												mfiforce__principal_remaining__c,
												mfiforce__amount_overdue__c,
												systemmodstamp,
												lastmodifiedbyid,
												lastmodifieddate,
												createdbyid,
												createddate,
												name,
												isdeleted,
												ownerid
												From mfiforce__loan_write_off_transaction__c"
			return loanWriteOffTransactionStr;
		end
	#lOANS_HISTORY_OBJ_NAME = "mfiforce__loans_history__c"
		def getLoansHistoryObjName
			return "mfiforce__loans_history__c"
		end
	#lOANS_HISTORY_QUERY
		def getLoansHistoryQuery
			loansHistoryStr = "Select Id,
								mfiforce__number_of_months_remaining__c,
								mfiforce__emi__c,
								mfiforce__purpose_of_the_loan__c,
								mfiforce__where_do_you_save__c,
								mfiforce__type_of_loan__c,
								lastactivitydate,
								systemmodstamp,
								lastmodifiedbyid,
								lastmodifieddate,
								createdbyid,
								createddate,
								name,
								isdeleted,
								ownerid
								From mfiforce__loans_history__c"
			return loansHistoryStr;
		end
end