module MFiFlexConstants
      
  #CRM objects
  #CLIENT_OBJ_NAME="mfiforce__Client__c"
    def getClientObjName
      return "mfiforce__client__c"  
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
                        isdeleted
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
                    isdeleted
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
                      isdeleted
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
                      isdeleted
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
                          mfiforce__transaction_date__c,
                          systemmodstamp,
                          lastmodifiedbyid,
                          lastmodifieddate,
                          createdbyid,
                          createddate,
                          name,
                          isdeleted
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
                        isdeleted
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
                    mfiforce__maximum_gap_between_installments__c,
                    systemmodstamp,
                    lastmodifiedbyid,
                    lastmodifieddate,
                    createdbyid,
                    createddate,
                    name,
                    isdeleted
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
                        mfiforce__cleared__c,
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
                        isdeleted
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
    
    #SAVINGS_ACCOUNT_OBJ_NAME="mfiforce__Savings_Account__c"
    def getSavingsAccountObjName
      return "mfiforce__Savings_Account__c"  
    end
  #SAVINGS_ACCOUNT_QUERY
    def getSavingsAccountQuery
    savingsAccountQueryStr = "SELECT Id, 
                  mfiforce__Approval_Date__c, 
                  mfiforce__Balance__c, 
                  mfiforce__Branch__c, 
                  mfiforce__Center__c, 
                  mfiforce__Client_ID__c, 
                  CreatedById, 
                  CreatedDate, 
                  IsDeleted, 
                  mfiforce__Deposit_Start_Date__c, 
                  mfiforce__Fee_Set__c, 
                  mfiforce__Fixed_Deposit_Amount__c, 
                  mfiforce__Fixed_Deposit_End_Date__c, 
                  mfiforce__Group__c, 
                  mfiforce__Interest_to_be_Posted__c, 
                  mfiforce__Last_Deposit_Date__c, 
                  LastModifiedById, 
                  LastModifiedDate, 
                  mfiforce__Linked_Savings_Account__c, 
                  mfiforce__Minimum_Balance__c, 
                  mfiforce__Next_Calc_Date__c, 
                  mfiforce__Next_Posting_Date__c, 
                  OwnerId, 
                  mfiforce__Recommended_Mandatory_Amnt_for_Deposits__c,
                  Name, 
                  mfiforce__Savings_Deposit_Count__c, 
                  mfiforce__Savings_Product_Name__c, 
                  mfiforce__Share_Capital_Account__c, 
                  mfiforce__Status__c, 
                  SystemModstamp, 
                  mfiforce__Total_Deposit__c, 
                  mfiforce__Total_Interest_Earned__c, 
                  mfiforce__Total_Overdue__c, 
                  mfiforce__Total_Withdrawal__c, 
                  mfiforce__Uncleared_Check_Deposit__c, 
                  mfiforce__Uncleared_Check_Withdrawal__c, 
                  mfiforce__Uncleared_Deposit_Amount__c, 
                  mfiforce__Uncleared_Withdrawal_Amount__c 
                  FROM mfiforce__Savings_Account__c"
      return savingsAccountQueryStr;
      end
  #SAVINGS_ACCOUNT_INTEREST_OBJ_NAME = "mfiforce__savings_account_interest__c"
    def getSavingsAccountInterestObjName
      return "mfiforce__savings_account_interest__c"
    end
  #SAVINGS_ACCOUNT_INTEREST_QUERY
    def getSavingsAccountInterestQuery
      savingAccountInterestStr ="SELECT Id, 
                    CreatedById, 
                    CreatedDate, 
                    mfiforce__Date__c, 
                    IsDeleted, 
                    mfiforce__Interest_To_Be_Posted__c, 
                    LastModifiedById, 
                    LastModifiedDate, 
                    Name, 
                    OwnerId, 
                    mfiforce__Posted__c, 
                    mfiforce__Savings_Account__c, 
                    SystemModstamp 
                    FROM mfiforce__Savings_Account_Interest__c"
     return savingAccountInterestStr
    end
  #SAVINGS_PAYMENT_COLLECTION_RECORD_OBJ_NAME = "mfiforce__savings_payment_collection_record__c"
    def getSavingsPaymentCollectionRecordObjName
      return "mfiforce__savings_payment_collection_record__c"
    end
  #SAVINGS_PAYMENT_COLLECTION_RECORD_QUERY
    def getSavingsPaymentCollectionRecordQuery
      savingsPaymentCollectionRecordStr = "SELECT Id, 
                          mfiforce__Actual_Collected_Amount__c, 
                          mfiforce__Check__c, 
                          mfiforce__Client__c, 
                          mfiforce__Collection_Date__c, 
                          CreatedById, 
                          CreatedDate, 
                          IsDeleted, 
                          LastModifiedById, 
                          LastModifiedDate, 
                          mfiforce__Mandatory_Payment__c, 
                          mfiforce__Overdues__c, 
                          OwnerId, 
                          Name, 
                          mfiforce__Payment_Mode__c, 
                          mfiforce__Savings_Account__c, 
                          SystemModstamp, 
                          mfiforce__Total_Collection_Amount__c 
                          FROM mfiforce__Savings_Payment_Collection_Record__c"
      return savingsPaymentCollectionRecordStr;
    end
  #SAVINGS_PRODUCT_OBJ_NAME = "mfiforce__savings_product__c"
    def getSavingsProductObjName
      return "mfiforce__savings_product__c"
    end
  #SAVINGS_PRODUCT_QUERY
    def getSavingsProductQuery
      savingsProductStr = "SELECT Id, 
                mfiforce__Accrued_Interest_Payable_Account__c, 
                mfiforce__Allow_Early_Withdrawals__c, 
                mfiforce__Amount_applies_to__c, 
                mfiforce__Approval_Date__c, 
                mfiforce__Balance_Used_for_Int_Rate_Calculation__c, 
                mfiforce__Cash_Fixed_Deposit__c, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                mfiforce__Deposit_Frequency__c, 
                mfiforce__Fee_Set__c, 
                mfiforce__Fixed_Deposit_Term__c, 
                mfiforce__Frequency_of_Interest_Posting_to_Account__c, 
                mfiforce__Frequency_of_Int_Rate_Calc__c, 
                mfiforce__Interest_Expense_Account__c, 
                mfiforce__Interest_Payable_Account__c, 
                mfiforce__Interest_Rate__c, 
                LastModifiedById, 
                LastModifiedDate, 
                mfiforce__Maintenance_Fees__c, 
                mfiforce__Amount_for_Deposit__c, 
                mfiforce__Max_Amount_Per_Withdrawal__c, 
                mfiforce__maximum_amount_for_fixed_deposit__c, 
                mfiforce__Min_Balance_Required_for_Interest_Rate_c__c, 
                mfiforce__minimum_amount_for_fixed_deposit__c, 
                OwnerId, 
                mfiforce__Type_of_Deposits__c, 
                mfiforce__Product_Type__c, 
                mfiforce__Savings_Product_Control_Account__c, 
                Name, 
                mfiforce__Start_Date__c, 
                mfiforce__Status__c, 
                SystemModstamp, 
                mfiforce__Time_Period_for_Int_Rate_Calculation__c, 
                mfiforce__Type_of_Owner__c
                FROM mfiforce__Savings_Product__c"
      return savingsProductStr;
    end
  #SAVINGS_PRODUCT_ACCOUNTING_SETUP_OBJ_NAME = "mfiforce__savings_product_accounting_setup__c"
    def getSavingsProductAccountingSetupObjName
      return "mfiforce__savings_product_accounting_setup__c"
    end
  #SAVINGS_PRODUCT_ACCOUNTING_SETUP_QUERY
    def getSavingsProductAccountingSetupQuery
      savingsProductAccountingSetupStr = "SELECT Id, 
                        mfiforce__Business_Event__c, 
                        CreatedById, 
                        CreatedDate, 
                        mfiforce__Default_Rule__c, 
                        IsDeleted, 
                        LastModifiedById, 
                        LastModifiedDate, 
                        mfiforce__Savings_Product__c, 
                        Name, 
                        SystemModstamp, 
                        mfiforce__Use_Default_Setup__c, 
                        mfiforce__User_Defined_Rule__c 
                        FROM mfiforce__Savings_Product_Accounting_Setup__c"
      return savingsProductAccountingSetupStr;
    end
  #SAVINGS_WITHDRAWAL_TRANSACTION_OBJ_NAME = "mfiforce__savings_withdrawal_transaction__c"
    def getSavingsWithdrawalTransactionObjName
      return "mfiforce__savings_withdrawal_transaction__c"
    end
  #SAVINGS_WITHDRAWAL_TRANSACTION_QUERY
    def getSavingsWithdrawalTransactionQuery
      savingsWithdrawalTransactionStr = "SELECT Id, 
                        CreatedById, 
                        CreatedDate, 
                        IsDeleted, 
                        LastModifiedById, 
                        LastModifiedDate, 
                        mfiforce__Receipt_Date__c, 
                        mfiforce__Receipt_ID__c, 
                        mfiforce__Savings_Account__c, 
                        Name, 
                        SystemModstamp, 
                        mfiforce__Withdrawal_Amount__c, 
                        mfiforce__Withdrawal_Date__c 
                        FROM mfiforce__Savings_Withdrawal_Transaction__c"
      return savingsWithdrawalTransactionStr;
    end
  #TRANSACTION_OBJ_NAME = "mfiforce__transaction__c"
    def getTrasactionObjName
      return "mfiforce__transaction__c"
    end
  #TRANSACTION_QUERY
    def getTransactionQuery
      transactionStr = "SELECT Id, 
                Name, 
                mfiforce__Branch__c, 
                mfiforce__Client__c, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                mfiforce__Group__c, 
                mfiforce__Id__c, 
                mfiforce__JV_Transaction__c, 
                mfiforce__Journal__c, 
                LastModifiedById, 
                LastModifiedDate, 
                OwnerId, 
                mfiforce__Posted__c, 
                mfiforce__Rejected__c, 
                mfiforce__System_Generated__c, 
                SystemModstamp, 
                mfiforce__Transaction_Date__c, 
                mfiforce__Transaction_Header_Writeable__c, 
                mfiforce__Transaction_Source__c, 
                mfiforce__Document_Number__c 
                FROM mfiforce__Transaction__c"
      return transactionStr;
    end
  #TRANSACTION_ENTRY_OBJ_NAME = "mfiforce__transaction_entry__c"
    def getTransactionEntryObjName
      return "mfiforce__transaction_entry__c"
    end
  #TRANSACTION_ENTRY_QUERY
    def getTransactionEntryQuery
      transactoinEntryStr = "SELECT Id, 
                  mfiforce__Closing_Balance__c, 
                  CreatedById, 
                  CreatedDate, 
                  mfiforce__Credit__c, 
                  mfiforce__Debit__c, 
                  IsDeleted, 
                  mfiforce__Description__c, 
                  mfiforce__Id__c, 
                  LastModifiedById, 
                  LastModifiedDate, 
                  mfiforce__MF_Account__c, 
                  mfiforce__Opening_Balance__c, 
                  mfiforce__Readonly__c, 
                  mfiforce__Savings_Sub_Ledger__c, 
                  mfiforce__Sub_Ledger__c, 
                  SystemModstamp, 
                  mfiforce__ToBeDeleted__c, 
                  mfiforce__Transaction__c, 
                  mfiforce__Transaction_Date__c, 
                  Name 
                  FROM mfiforce__Transaction_Entry__c"
      return transactoinEntryStr;
    end
  #TRANSACTION_SOURCE_OBJ_NAME = "mfiforce__transaction_source__c"
    def getTransactionSourceObjName
      return "mfiforce__transaction_source__c"
    end
  #TRANSACTION_SOURCE_QUERY
    def getTransactionSourceQuery
      transactionSourceStr = "SELECT Id, 
                  CreatedById, 
                  CreatedDate, 
                  IsDeleted, 
                  LastModifiedById, 
                  LastModifiedDate, 
                  OwnerId, 
                  SystemModstamp, 
                  Name 
                  FROM mfiforce__Transaction_Source__c"
      return transactionSourceStr;
    end
  #USER_BRANCH_INFO_OBJ_NAME = "mfiforce__user_branch_info__c"
    def getUserBranchInfoObjName
      return "mfiforce__user_branch_info__c"
    end
  #USER_BRANCH_QUERY
    def getUserBranchInfoQuery
      userBranchInfoStr = "SELECT Id, 
                mfiforce__Branch__c, 
                CreatedById, 
                CreatedDate, 
                mfiforce__Default_Branch__c, 
                IsDeleted, 
                LastModifiedById, 
                LastModifiedDate, 
                OwnerId, 
                SystemModstamp, 
                mfiforce__User__c, 
                Name 
                FROM mfiforce__User_Branch_Info__c"
      return userBranchInfoStr;
    end
  #FISCAL_YEAR_OBJ_NAME = "mfiforce__fiscal_year__c"
    def getFiscalYearObjName
      return "mfiforce__fiscal_year__c"
    end
  #FISCAL_YEAR_QUERY
    def getFiscalYearQuery
      fiscalYearStr = "SELECT Id, 
              CreatedById, 
              CreatedDate, 
              IsDeleted, 
              mfiforce__End_Date__c, 
              mfiforce__FY_Closing_Balance__c, 
              Name, 
              mfiforce__Fiscal_Year_Setting_Id__c, 
              LastModifiedById, 
              LastModifiedDate, 
              OwnerId, 
              mfiforce__Start_Date__c, 
              mfiforce__Status__c, 
              SystemModstamp 
              FROM mfiforce__Fiscal_Year__c"
      return fiscalYearStr;
    end
  #FUNDER_OBJ_NAME = "mfiforce__funder__c"
    def getFunderObjName
      return "mfiforce__funder__c"
    end
  #FUNDER_QUERY
    def getFunderQuery
      funderStr = "SELECT Id, 
              mfiforce__Address_1__c, 
              mfiforce__Address_2__c, 
              mfiforce__Address_3__c, 
              mfiforce__City__c, 
              mfiforce__Country__c, 
              CreatedById, 
              CreatedDate, 
              IsDeleted, 
              Name, 
              mfiforce__Funder_Name__c, 
              LastModifiedById, 
              LastModifiedDate, 
              OwnerId, 
              SystemModstamp, 
              mfiforce__User__c 
              FROM mfiforce__Funder__c"
      return funderStr;
    end
  #FUNDER_PORTFOLIO_OBJ_NAME = "mfiforce__funder_portfolio__c"
    def getFunderPortfolioObjName
      return "mfiforce__funder_portfolio__c"
    end
  #FUNDER_PORTFOLIO_QUERY
    def getFunderPortfolioQery
      funderPortfolioStr = "SELECT Id, 
                  mfiforce__Amount_Funded__c, 
                  mfiforce__Amount_Utilized__c, 
                  mfiforce__Branch__c, 
                  mfiforce__Center__c, 
                  CreatedById, 
                  CreatedDate, 
                  IsDeleted, 
                  mfiforce__Funder__c, 
                  Name, 
                  LastModifiedById, 
                  LastModifiedDate, 
                  SystemModstamp 
                  FROM mfiforce__Funder_Portfolio__c"
      return funderPortfolioStr;
    end
  #GROUP_OBJ_NAME = "mfiforce__group__c"
    def getGroupObjName
      return "mfiforce__group__c"
    end
  #GROUP_QUERY
    def getGroupQuery
      groupStr = "SELECT Id, 
            mfiforce__Address_Line_1__c, 
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
            IsDeleted, 
            mfiforce__External_ID__c, 
            mfiforce__Fees_Collected__c, 
            mfiforce__GroupCnt__c, 
            mfiforce__Group_Fee_Set__c, 
            mfiforce__Group_Leader__c, 
            Name, 
            mfiforce__Group_Status__c, 
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
            mfiforce__Notes__c, 
            OwnerId, 
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
      return groupStr;
    end
  #GROUP_POSITION_OBJ_NAME = "mfiforce__group_position__c "
    def getGroupPositionObjName
      return "mfiforce__group_position__c"
    end
  #GROUP_POSITION_QUERY
    def getGroupPositionQuery
      groupPositionStr = "SELECT Id, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                Name, 
                LastModifiedById, 
                LastModifiedDate, 
                OwnerId, 
                SystemModstamp 
                FROM mfiforce__Group_Position__c"
      return groupPositionStr;
    end
  #FEE_OBJ_NAME = "mfiforce__fee__c "
    def getFeeObjName
      return "mfiforce__fee__c"
    end
  #FEE_QUERY
    def getFeeQuery
      feeStr ="SELECT Id, 
          mfiforce__Amount__c, 
          CreatedById, CreatedDate, 
          mfiforce__Currency__c, 
          mfiforce__Default_fees__c, 
          IsDeleted, 
          mfiforce__Fee_Calculation_Method__c, 
          mfiforce__Fee_Category__c, 
          mfiforce__Income_Account__c, 
          Name, 
          LastModifiedById, 
          LastModifiedDate, 
          mfiforce__Maintenance_Fee_s_Frequency__c, 
          OwnerId, 
          mfiforce__Refundable__c, 
          mfiforce__State__c, 
          mfiforce__Suspended_Fee_Account__c, 
          SystemModstamp, 
          mfiforce__Time_of_charge__c 
          FROM mfiforce__Fee__c"
      return feeStr;
    end
  #FEE_JUNCTION_OBJ_NAME = "mfiforce__fee_junction__c"
    def getFeeJunctionObjName
      return "mfiforce__fee_junction__c"
    end
  #FEE_JUNCTION_QUERY
    def getFeeJunctionQuery
      feeJunctionStr ="select Id,mfiforce__Fee_Set__c,
              mfiforce__Fee__c,
              SystemModStamp,
              LastModifiedbyId,
              LastModifiedDate,
              CreatedById,
              CreatedDate,
              Name,
              IsDeleted
              From mfiforce__fee_junction__c"
      return feeJunctionStr;
    end
  #FEE_SET_OBJ_NAME = "mfiforce__fee_set__c"
    def getFeeSetObjName
      return "mfiforce__fee_set__c"
    end
  #FEE_SET_QUERY
    def getFeeSetQuery
      feeSetStr = "SELECT Id, 
            CreatedById, 
            CreatedDate, 
            IsDeleted, 
            mfiforce__Fee_Set_Category__c, 
            Name, 
            LastModifiedById, 
            LastModifiedDate, 
            mfiforce__Number_of_Fees__c, 
            OwnerId, 
            SystemModstamp
            FROM mfiforce__Fee_Set__c"
          return feeSetStr;
    end
  #MEETING_SCHEDULE_OBJ_NAME = "mfiforce__meeting_schedule__c"
    def getMeetingScheduleObjName
      return "mfiforce__meeting_schedule__c"
    end
  #MEETING_SCHEDULE_QUERY
    def getMeetingScheduleQuery
      meetingScheduleStr ="SELECT Id, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                mfiforce__Frequency__c, 
                LastModifiedById, 
                LastModifiedDate, 
                Name, 
                OwnerId, 
                mfiforce__Start_Date__c, 
                SystemModstamp 
                FROM mfiforce__Meeting_Schedule__c"
      return meetingScheduleStr;
    end
  #MF_ACCOUNT_OBJ_NAME = "mfiforce__mf_account__c"
    def getMfAccountObjName
      return "mfiforce__mf_account__c"
    end
  #MF_ACCOUNT_QUERY
    def getMfAccountQuery
      mfAccountStr = "SELECT Id, 
              mfiforce__Acccount_Type_Multiplier__c, 
              Name, 
              mfiforce__Account_Type__c, 
              mfiforce__Balance__c, 
              mfiforce__Branch__c, 
              mfiforce__Category_1__c, 
              mfiforce__Category_2__c, 
              mfiforce__Category_3__c, 
              mfiforce__Category_4__c, 
              CreatedById, 
              CreatedDate, 
              IsDeleted, 
              mfiforce__Description__c, 
              mfiforce__FY_Closing_Balance__c, 
              mfiforce__Fiscal_Year__c, 
              mfiforce__Is_Master__c, 
              mfiforce__JV_Allowed__c, 
              LastModifiedById, 
              LastModifiedDate, 
              mfiforce__Long_Description__c, 
              OwnerId, 
              mfiforce__Parent_Account__c, 
              SystemModstamp, 
              mfiforce__Title__c, 
              mfiforce__isLeaf__c 
              FROM mfiforce__MF_Account__c"
      return mfAccountStr;
    end
  #MF_ACCOUNT_TYPE_OBJ_NAME = "mfiforce__mf_account_type__c"
    def getMfAccountTypeObjName
      return "mfiforce__mf_account_type__c"
    end
  #MF_ACCOUNT_TYPE_QUERY
    def getMfAccountTypeQuery
      mfAccountTypeStr = "SELECT Id, 
                Name, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                LastModifiedById, 
                LastModifiedDate, 
                OwnerId, 
                SystemModstamp 
                FROM mfiforce__MF_Account_Type__c"
      return mfAccountTypeStr;
    end
end