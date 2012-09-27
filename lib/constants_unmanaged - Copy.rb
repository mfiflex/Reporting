module MFiFlexUnmanagedConstants
      
	#CRM objects
  #CLIENT_OBJ_NAME="Client__c"
    def getClientObjName
      return "Client__c"  
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
                            current_loan_officer__c
                            from client__c"
                                                        
          return clientQueryStr
      end
      
   #GROUP_OBJ_NAME = "Group__c"
    def getGroupObjName
        return "Group__c"  
    end
   #GROUP_OBJ_QUERY 
    def getGroupQuery 
    groupQueryStr="SELECT Id, Address_Line_1__c, 
                Address_2__c, 
                Address_3__c, 
                Approval_Date__c, 
                Office__c, 
                Center__c, 
                City__c, 
                Country__c, 
                CreatedById, 
                CreatedDate, 
                Current_Loan_Officer__c, 
                IsDeleted, External_ID__c, 
                Fees_Collected__c, 
                GroupCnt__c, 
                Group_Fee_Set__c, 
                Group_Leader__c, 
                Name, Group_Status__c, 
                Group_System_ID__c, 
                Last_Meeting_Date__c, 
                LastModifiedById, 
                LastModifiedDate, 
                Assigned_LO__c, 
                Manager__c, 
                Maximum_number_of_persons__c, 
                Meeting_Schedule__c, 
                Minimum_number_of_persons__c, 
                Next_Meeting_Date__c, 
                Notes__c, OwnerId, 
                Question_Groups__c, 
                Source_Loan_Officer__c, 
                State__c, 
                SystemModstamp, 
                Telephone_No__c, 
                Total_Fees_Charged__c, 
                Trained__c, 
                Trained_On__c, 
                Zipcode__c, 
                Zone__c 
                FROM Group__c"
      return groupQueryStr
    end      
   
    #CENTER_OBJ_NAME = "Center__c"
    def getCenterObjName
      return "Center__c"  
    end
    
    #CENTER_OBJ_QUERY
    def getCenterQuery
      centerQueryStr=" select id,
                current_loan_officer__c,
                source_loan_officer__c,
                loan_officer__c,
                centercnt__c,
                center_leader__c,
                location__c,
                meeting_schedule__c,
                branch__c,
                manager__c,
                systemmodstamp,
                lastmodifiedbyid,
                lastmodifieddate,
                createdbyid,
                createddate,
                name,
                isdeleted,
                ownerid
                From Center__c"
      return centerQueryStr
    end
  #LOANACCOUNT_OBJ_NAME = "loan_account__c"
    def getLoanAccountObjName
      return "loan_account__c"
    end
  #LOANACCOUNT_OBJ_QUERY
    def getLoanAccountQuery
      loanAccountQueryStr="Select Id, 
                is_rescheduled__c,
                new_field_3__c,
                average_monthly_income__c,
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
                loan_product_name__c,
                loan_purpose__c,
                client__c,
                systemmodstamp,
                lastmodifiedbyid,
                lastmodifieddate,
                createdbyid,
                createddate,
                name,
                isdeleted,
                ownerid
                From Loan_Account__c"
        return loanAccountQueryStr
    end
  #LOANACCOUNTHISTORY_OBJ_NAME = "loan_account_history__c"
    def getLoanAccountHistoryObjName
      return "loan_account_history__c"
    end
  #LOANACCOUNTHISTORY_OBJ_QUERY
    def getLoanAccountHistoryQuery
      loanAccountHistoryStr="Select Id,
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
                    loan_account__c,
                    systemmodstamp,
                    lastmodifiedbyid,
                    lastmodifieddate,
                    createdbyid,
                    createddate,
                    name,
                    isdeleted,
                    ownerid
                    From loan_account_history__c"
      return loanAccountHistoryStr
    end
  #LOAN_APPROVAL_PREREQUISITES_OBJ_NAME = "loan_approval_prerequisites__c"
    def getLoanApprovalPrerequisitedObjName
      return "loan_approval_prerequisites__c"
    end
  #LOAN_APPROVAL_PREREQUISITES_OBJ_QUERY
    def getLoanApprovalPrerequisitedQuery
      loanApprovalPrerequisitedStr ="Select Id,
                        is_training_required__c,
                        minimum_savings_balance__c,
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
                        loan_product__c,
                        systemmodstamp,
                        lastmodifiedbyid,
                        lastmodifieddate,
                        createdbyid,
                        createddate,
                        name,
                        isdeleted
                        From loan_approval_prerequisites__c"
      return loanApprovalPrerequisitedStr
    end
  #LOAN_BALANCE_S_SNAPSHOT_OBJ_NAME = "loan_balance_s_snapshot__c"
    def getLoanBalanceSSnapshotObjName
      return "loan_balance_s_snapshot__c"
    end
  #LOAN_BALANCE_S_SNAPSHOT_QUERY
    def getLoanBalanceSSnapshotQuery
      loanBalanceSSnapshotStr="Select Id,
                    total_fees_overdue__c,
                    principal_overdue__c,
                    interest_overdue__c,
                    fees_remaining__c,
                    interest_remaining__c,
                    principal_remaining__c,
                    fees_paid__c,
                    penalty_paid__c,
                    interest_paid__c,
                    principal_paid__c,
                    loan_payment_transaction__c,
                    systemmodstamp,
                    lastmodifiedbyid,
                    lastmodifieddate,
                    createdbyid,
                    createddate,
                    name,
                    isdeleted
                  From loan_balance_s_snapshot__c"
      return loanBalanceSSnapshotStr
    end
  #LOAN_DISBURSAL_TRANSACTION_OBJ_NAME = "loan_disbursal_transaction__c"
    def getloanDisbursalTransactionObjName
      return "loan_disbursal_transaction__c"
    end
  #LOAN_DISBURSAL_TRANSACTION_QUERY
    def getloanDisbursalTransactionQuery
      loanDisbursalTransactionStr = "Select Id,
                      reversed__c,
                      rejected__c,
                      cleared__c,
                      mode_of_payment__c,
                      receipt_id__c,
                      disbursal_date__c,
                      loan_account__c,
                      systemmodstamp,
                      lastmodifiedbyid,
                      lastmodifieddate,
                      createdbyid,
                      createddate,
                      name,
                      isdeleted
                      From loan_disbursal_transaction__c"
      return loanDisbursalTransactionStr
    end
  #LOAN_LOSS_PROVISIONING_OBJ_NAME = "loan_loss_provisioning_setup__c"
    def getLoanLossProvisioningObjName
      return "loan_loss_provisioning_setup__c"
    end
  #LOAN_LOSS_PROVISIONING_QUERY
    def getLoanLossProvisioningQuery
      loanLossProvisioningStr = "Select Id,
                      loan_product__c,
                      provision_percentage__c,
                      class__c,
                      systemmodstamp,
                      lastmodifiedbyid,
                      lastmodifieddate,
                      createdbyid,
                      createddate,
                      name,
                      isdeleted
                      From loan_loss_provisioning_setup__c"
      return loanLossProvisioningStr
    end
  #LOAN_PAYMENT_COLLECTION_OBJ_NAME = "loan_payment_collection__c"
    def getLoanPaymentCollectionObjName
      return "loan_payment_collection__c"
    end
  #LOAN_PAYMENT_COLLECTION_QUERY 
    def getLoanPaymentCollectionQuery
      loanPaymentCollectionStr ="Select Id,
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
                      repayment_schedule__c,
                      systemmodstamp,
                      lastmodifiedbyid,
                      lastmodifieddate,
                      createdbyid,
                      createddate,
                      name,
                      isdeleted,
                      ownerid
                      From loan_payment_collection__c"
      return loanPaymentCollectionStr
    end
  #LOAN_PAYMENT_TRANSACTION_OBJ_NAME = "loan_payment_transaction__c"
    def getLoanPaymentTransactionObjName
      return "loan_payment_transaction__c"
    end
  #LOAN_PAYMENT_TRANSACTION_QUERY
    def getLoanPaymentTransactionQuery
      loanPaymentTransactionObjNameStr = "Select Id,
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
                          transaction_date__c,
                          systemmodstamp,
                          lastmodifiedbyid,
                          lastmodifieddate,
                          createdbyid,
                          createddate,
                          name,
                          isdeleted
                          From loan_payment_transaction__c"
      return loanPaymentTransactionObjNameStr
    end
  #LOAN_PRODUCT_OBJ_NAME = "loan_product__c"
    def getLoanProductObjName
      return "loan_product__c"
    end
  #LOAN_PRODUCT_QUERY
    def getLoanProductQuery
      loanProductStr="Select Id,
                is_sub_product__c,
                parent_loan_product__c,
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
                loan_product_code__c,
                systemmodstamp,
                lastmodifiedbyid,
                lastmodifieddate,
                createdbyid,
                createddate,
                name,
                isdeleted,
                ownerid
                From loan_product__c"
      return loanProductStr
    end
  #LOAN_PRODUCT_ACCOUNTING_SETUP_OBJ_NAME = "loan_product_accounting_setup__c"
    def getLoanProductAccountingSetupObjName
      return "loan_product_accounting_setup__c"
    end
  #LOAN_PRODUCT_ACCOUNTING_SETUP_QUERY
    def getLoanProductAccountingSetupQuery
      loanProductAccountingSetupStr = "Select Id,
                        default_rule__c,
                        loan_product__c,
                        user_defined_rule__c,
                        use_default_setup__c,
                        business_event__c,
                        systemmodstamp,
                        lastmodifiedbyid,
                        lastmodifieddate,
                        createdbyid,
                        createddate,
                        name,
                        isdeleted
                        From loan_product_accounting_setup__c"
      return loanProductAccountingSetupStr
    end
  #LOAN_PRODUCT_CYCLE_OBJ_NAME = "loan_product_cycle__c"
    def getLoanProductCycleObjName
      return "loan_product_cycle__c"
    end
  #LOAN_PRODUCT_CYCLE_QUERY
    def getLoanProductCycleQuery
      loanProductCycleStr = "Select Id,
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
                    maximum_gap_between_installments__c,
                    systemmodstamp,
                    lastmodifiedbyid,
                    lastmodifieddate,
                    createdbyid,
                    createddate,
                    name,
                    isdeleted
                    From loan_product_cycle__c"
      return loanProductCycleStr
    end
  #LOAN_PURPOSE_OBJ_NAME = "loan_purpose__c"
    def getLoanPurposeObjName
      return "loan_purpose__c"
    end
  #LOAN_PURPOSE_QUERY
    def getLoanPurposeQuery
      loanPurposeStr = "Select Id,
                  description__c,
                  loan_purpose_code__c,
                  systemmodstamp,
                  lastmodifiedbyid,
                  lastmodifieddate,
                  createdbyid,
                  createddate,
                  name,
                  isdeleted,
                  ownerid
                  From loan_purpose__c"
      return loanPurposeStr
    end
  #LOAN_STATUS_OBJ_NAME = "loan_status__c"
    def getLoanStatusObjName
      return "loan_status__c"
    end
  #LOAN_STATUS_QUERY
    def getLoanStatusQuery
      loanStatusStr = "Select Id,
                description__c,
                systemmodstamp,
                lastmodifiedbyid,
                lastmodifieddate,
                createdbyid,
                createddate,
                name,
                isdeleted,
                ownerid
                From loan_status__c"
      return loanStatusStr
    end
  #LOAN_WRITE_OFF_TRANSACTION_OBJ_NAME = "loan_write_off_transaction__c"
    def getLoanWriteOffTransactionObjName
      return "loan_write_off_transaction__c"
    end
  #LOAN_WRITE_OFF_TRANSACTION_QUERY
    def getLoanWriteOffTransactionQuery
      loanWriteOffTransactionStr = "Select Id,
                        fees_remaining__c,
                        rejected__c,
                        cleared__c,
                        receipt_id__c,
                        transaction_date__c,
                        total_amount_remaining__c,
                        loan_account__c,
                        interest_remaining__c,
                        principal_remaining__c,
                        amount_overdue__c,
                        systemmodstamp,
                        lastmodifiedbyid,
                        lastmodifieddate,
                        createdbyid,
                        createddate,
                        name,
                        isdeleted
                        From loan_write_off_transaction__c"
      return loanWriteOffTransactionStr
    end
  #lOANS_HISTORY_OBJ_NAME = "loans_history__c"
    def getLoansHistoryObjName
      return "loans_history__c"
    end
  #lOANS_HISTORY_QUERY
    def getLoansHistoryQuery
      loansHistoryStr = "Select Id,
                number_of_months_remaining__c,
                emi__c,
                purpose_of_the_loan__c,
                where_do_you_save__c,
                type_of_loan__c,
                lastactivitydate,
                systemmodstamp,
                lastmodifiedbyid,
                lastmodifieddate,
                createdbyid,
                createddate,
                name,
                isdeleted,
                ownerid
                From loans_history__c"
      return loansHistoryStr
    end
    
    #SAVINGS_ACCOUNT_OBJ_NAME="Savings_Account__c"
    def getSavingsAccountObjName
      return "Savings_Account__c"  
    end
  #SAVINGS_ACCOUNT_QUERY
    def getSavingsAccountQuery
    savingsAccountQueryStr = "SELECT Id, 
                  Approval_Date__c, 
                  Balance__c, 
                  Branch__c, 
                  Center__c, 
                  Client_ID__c, 
                  CreatedById, 
                  CreatedDate, 
                  IsDeleted, 
                  Deposit_Start_Date__c, 
                  Fee_Set__c, 
                  Fixed_Deposit_Amount__c, 
                  Fixed_Deposit_End_Date__c, 
                  Group__c, 
                  Interest_to_be_Posted__c, 
                  Last_Deposit_Date__c, 
                  LastModifiedById, 
                  LastModifiedDate, 
                  Linked_Savings_Account__c, 
                  Minimum_Balance__c, 
                  Next_Calc_Date__c, 
                  Next_Posting_Date__c, 
                  OwnerId, 
                  Recommended_Mandatory_Amnt_for_Deposits__c,
                  Name, 
                  Savings_Product_Name__c, 
                  Status__c, 
                  SystemModstamp, 
                  Total_Deposit__c, 
                  Total_Interest_Earned__c, 
                  Total_Overdue__c, 
                  Total_Withdrawal__c, 
                  Uncleared_Check_Deposit__c, 
                  Uncleared_Check_Withdrawal__c, 
                  Uncleared_Deposit_Amount__c, 
                  Uncleared_Withdrawal_Amount__c 
                  FROM Savings_Account__c"
      return savingsAccountQueryStr
      end
  #SAVINGS_ACCOUNT_INTEREST_OBJ_NAME = "savings_account_interest__c"
    def getSavingsAccountInterestObjName
      return "savings_account_interest__c"
    end
  #SAVINGS_ACCOUNT_INTEREST_QUERY
    def getSavingsAccountInterestQuery
      savingAccountInterestStr ="SELECT Id, 
                    CreatedById, 
                    CreatedDate, 
                    Date__c, 
                    IsDeleted, 
                    Interest_To_Be_Posted__c, 
                    LastModifiedById, 
                    LastModifiedDate, 
                    Name, 
                    OwnerId, 
                    Posted__c, 
                    Savings_Account__c, 
                    SystemModstamp 
                    FROM Savings_Account_Interest__c"
     return savingAccountInterestStr
    end
  #SAVINGS_PAYMENT_COLLECTION_RECORD_OBJ_NAME = "savings_payment_collection_record__c"
    def getSavingsPaymentCollectionRecordObjName
      return "savings_payment_collection_record__c"
    end
  #SAVINGS_PAYMENT_COLLECTION_RECORD_QUERY
    def getSavingsPaymentCollectionRecordQuery
      savingsPaymentCollectionRecordStr = "SELECT Id, 
                          Actual_Collected_Amount__c, 
                          Check__c, 
                          Client__c, 
                          Collection_Date__c, 
                          CreatedById, 
                          CreatedDate, 
                          IsDeleted, 
                          LastModifiedById, 
                          LastModifiedDate, 
                          Mandatory_Payment__c, 
                          Overdues__c, 
                          OwnerId, 
                          Name, 
                          Payment_Mode__c, 
                          Savings_Account__c, 
                          SystemModstamp, 
                          Total_Collection_Amount__c 
                          FROM Savings_Payment_Collection_Record__c"
      return savingsPaymentCollectionRecordStr
    end
  #SAVINGS_PRODUCT_OBJ_NAME = "savings_product__c"
    def getSavingsProductObjName
      return "savings_product__c"
    end
  #SAVINGS_PRODUCT_QUERY
    def getSavingsProductQuery
      savingsProductStr = "SELECT Id, 
                Accrued_Interest_Payable_Account__c, 
                Allow_Early_Withdrawals__c, 
                Amount_applies_to__c, 
                Approval_Date__c, 
                Balance_Used_for_Int_Rate_Calculation__c, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                Deposit_Frequency__c, 
                Fee_Set__c, 
                Fixed_Deposit_Term__c, 
                Frequency_of_Interest_Posting_to_Account__c, 
                Frequency_of_Int_Rate_Calc__c, 
                Interest_Expense_Account__c, 
                Interest_Payable_Account__c, 
                Interest_Rate__c, 
                LastModifiedById, 
                LastModifiedDate, 
                Maintenance_Fees__c, 
                Amount_for_Deposit__c, 
                Min_Balance_Required_for_Interest_Rate_c__c, 
                OwnerId, 
                Type_of_Deposits__c, 
                Product_Type__c, 
                Savings_Product_Control_Account__c, 
                Name, 
                Start_Date__c, 
                Status__c, 
                SystemModstamp, 
                Time_Period_for_Int_Rate_Calculation__c, 
                Type_of_Owner__c
                FROM Savings_Product__c"
      return savingsProductStr
    end
  #SAVINGS_PRODUCT_ACCOUNTING_SETUP_OBJ_NAME = "savings_product_accounting_setup__c"
    def getSavingsProductAccountingSetupObjName
      return "savings_product_accounting_setup__c"
    end
  #SAVINGS_PRODUCT_ACCOUNTING_SETUP_QUERY
    def getSavingsProductAccountingSetupQuery
      savingsProductAccountingSetupStr = "SELECT Id, 
                        Business_Event__c, 
                        CreatedById, 
                        CreatedDate, 
                        Default_Rule__c, 
                        IsDeleted, 
                        LastModifiedById, 
                        LastModifiedDate, 
                        Savings_Product__c, 
                        Name, 
                        SystemModstamp, 
                        Use_Default_Setup__c, 
                        User_Defined_Rule__c 
                        FROM Savings_Product_Accounting_Setup__c"
      return savingsProductAccountingSetupStr
    end
  #SAVINGS_WITHDRAWAL_TRANSACTION_OBJ_NAME = "savings_withdrawal_transaction__c"
    def getSavingsWithdrawalTransactionObjName
      return "savings_withdrawal_transaction__c"
    end
  #SAVINGS_WITHDRAWAL_TRANSACTION_QUERY
    def getSavingsWithdrawalTransactionQuery
      savingsWithdrawalTransactionStr = "SELECT Id, 
                        CreatedById, 
                        CreatedDate, 
                        IsDeleted, 
                        LastModifiedById, 
                        LastModifiedDate, 
                        Receipt_Date__c, 
                        Receipt_ID__c, 
                        Savings_Account__c, 
                        Name, 
                        SystemModstamp, 
                        Withdrawal_Amount__c, 
                        Withdrawal_Date__c 
                        FROM Savings_Withdrawal_Transaction__c"
      return savingsWithdrawalTransactionStr
    end
  #TRANSACTION_OBJ_NAME = "transaction__c"
    def getTrasactionObjName
      return "transaction__c"
    end
  #TRANSACTION_QUERY
    def getTransactionQuery
      transactionStr = "SELECT Id, 
                Name, 
                Branch__c, 
                Client__c, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                Group__c, 
                Id__c, 
                JV_Transaction__c, 
                Journal__c, 
                LastModifiedById, 
                LastModifiedDate, 
                OwnerId, 
                Posted__c, 
                Rejected__c, 
                System_Generated__c, 
                SystemModstamp, 
                Transaction_Date__c, 
                Transaction_Header_Writeable__c, 
                Transaction_Source__c, 
                Document_Number__c 
                FROM Transaction__c"
      return transactionStr
    end
  #TRANSACTION_ENTRY_OBJ_NAME = "transaction_entry__c"
    def getTransactionEntryObjName
      return "transaction_entry__c"
    end
  #TRANSACTION_ENTRY_QUERY
    def getTransactionEntryQuery
      transactoinEntryStr = "SELECT Id, 
                  Closing_Balance__c, 
                  CreatedById, 
                  CreatedDate, 
                  Credit__c, 
                  Debit__c, 
                  IsDeleted, 
                  Description__c, 
                  Id__c, 
                  LastModifiedById, 
                  LastModifiedDate, 
                  MF_Account__c, 
                  Opening_Balance__c, 
                  Readonly__c, 
                  Savings_Sub_Ledger__c, 
                  Sub_Ledger__c, 
                  SystemModstamp, 
                  ToBeDeleted__c, 
                  Transaction__c, 
                  Name 
                  FROM Transaction_Entry__c"
      return transactoinEntryStr
    end
  #TRANSACTION_SOURCE_OBJ_NAME = "transaction_source__c"
    def getTransactionSourceObjName
      return "transaction_source__c"
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
                  FROM Transaction_Source__c"
      return transactionSourceStr
    end
  #USER_BRANCH_INFO_OBJ_NAME = "user_branch_info__c"
    def getUserBranchInfoObjName
      return "user_branch_info__c"
    end
  #USER_BRANCH_QUERY
    def getUserBranchInfoQuery
      userBranchInfoStr = "SELECT Id, 
                Branch__c, 
                CreatedById, 
                CreatedDate, 
                Default_Branch__c, 
                IsDeleted, 
                LastModifiedById, 
                LastModifiedDate, 
                OwnerId, 
                SystemModstamp, 
                User__c, 
                Name 
                FROM User_Branch_Info__c"
      return userBranchInfoStr
    end
  #FISCAL_YEAR_OBJ_NAME = "fiscal_year__c"
    def getFiscalYearObjName
      return "fiscal_year__c"
    end
  #FISCAL_YEAR_QUERY
    def getFiscalYearQuery
      fiscalYearStr = "SELECT Id, 
              CreatedById, 
              CreatedDate, 
              IsDeleted, 
              End_Date__c, 
              FY_Closing_Balance__c, 
              Name, 
              Fiscal_Year_Setting_Id__c, 
              LastModifiedById, 
              LastModifiedDate, 
              OwnerId, 
              Start_Date__c, 
              Status__c, 
              SystemModstamp 
              FROM Fiscal_Year__c"
      return fiscalYearStr
    end
  #FUNDER_OBJ_NAME = "funder__c"
    def getFunderObjName
      return "funder__c"
    end
  #FUNDER_QUERY
    def getFunderQuery
      funderStr = "SELECT Id, 
              Address_1__c, 
              Address_2__c, 
              Address_3__c, 
              City__c, 
              Country__c, 
              CreatedById, 
              CreatedDate, 
              IsDeleted, 
              Name, 
              Funder_Name__c, 
              LastModifiedById, 
              LastModifiedDate, 
              OwnerId, 
              SystemModstamp, 
              User__c 
              FROM Funder__c"
      return funderStr
    end
  #FUNDER_PORTFOLIO_OBJ_NAME = "funder_portfolio__c"
    def getFunderPortfolioObjName
      return "funder_portfolio__c"
    end
  #FUNDER_PORTFOLIO_QUERY
    def getFunderPortfolioQery
      funderPortfolioStr = "SELECT Id, 
                  Amount_Funded__c, 
                  Amount_Utilized__c, 
                  Branch__c, 
                  Center__c, 
                  CreatedById, 
                  CreatedDate, 
                  IsDeleted, 
                  Funder__c, 
                  Name, 
                  LastModifiedById, 
                  LastModifiedDate, 
                  SystemModstamp 
                  FROM Funder_Portfolio__c"
      return funderPortfolioStr
    end
  #GROUP_OBJ_NAME = "group__c"
    def getGroupObjName
      return "group__c"
    end
  #GROUP_QUERY
    def getGroupQuery
      groupStr = "SELECT Id, 
            Address_Line_1__c, 
            Address_2__c, 
            Address_3__c, 
            Approval_Date__c, 
            Office__c, 
            Center__c, 
            City__c, 
            Country__c, 
            CreatedById, 
            CreatedDate, 
            Current_Loan_Officer__c, 
            IsDeleted, 
            External_ID__c, 
            Fees_Collected__c, 
            GroupCnt__c, 
            Group_Fee_Set__c, 
            Group_Leader__c, 
            Name, 
            Group_Status__c, 
            Group_System_ID__c, 
            Last_Meeting_Date__c, 
            LastModifiedById, 
            LastModifiedDate, 
            Assigned_LO__c, 
            Manager__c, 
            Maximum_number_of_persons__c, 
            Meeting_Schedule__c, 
            Minimum_number_of_persons__c, 
            Next_Meeting_Date__c, 
            Notes__c, 
            OwnerId, 
            Question_Groups__c, 
            Source_Loan_Officer__c, 
            State__c, 
            SystemModstamp, 
            Telephone_No__c, 
            Total_Fees_Charged__c, 
            Trained__c, 
            Trained_On__c, 
            Zipcode__c, 
            Zone__c 
            FROM Group__c"
      return groupStr
    end
  #GROUP_POSITION_OBJ_NAME = "group_position__c "
    def getGroupPositionObjName
      return "group_position__c"
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
                FROM Group_Position__c"
      return groupPositionStr
    end
  #FEE_OBJ_NAME = "fee__c "
    def getFeeObjName
      return "fee__c"
    end
  #FEE_QUERY
    def getFeeQuery
      feeStr ="SELECT Id, 
          Amount__c, 
          CreatedById, CreatedDate, 
          Currency__c, 
          Default_fees__c, 
          IsDeleted, 
          Fee_Calculation_Method__c, 
          Fee_Category__c, 
          Income_Account__c, 
          Name, 
          LastModifiedById, 
          LastModifiedDate,  
          OwnerId, 
          Refundable__c, 
          State__c, 
          Suspended_Fee_Account__c, 
          SystemModstamp, 
          Time_of_charge__c 
          FROM Fee__c"
      return feeStr
    end
  #FEE_JUNCTION_OBJ_NAME = "fee_junction__c"
    def getFeeJunctionObjName
      return "fee_junction__c"
    end
  #FEE_JUNCTION_QUERY
    def getFeeJunctionQuery
      feeJunctionStr ="select Id,Fee_Set__c,
              Fee__c,
              SystemModStamp,
              LastModifiedbyId,
              LastModifiedDate,
              CreatedById,
              CreatedDate,
              Name,
              IsDeleted
              From fee_junction__c"
      return feeJunctionStr
    end
  #FEE_SET_OBJ_NAME = "fee_set__c"
    def getFeeSetObjName
      return "fee_set__c"
    end
  #FEE_SET_QUERY
    def getFeeSetQuery
      feeSetStr = "SELECT Id, 
            CreatedById, 
            CreatedDate, 
            IsDeleted, 
            Fee_Set_Category__c, 
            Name, 
            LastModifiedById, 
            LastModifiedDate, 
            Number_of_Fees__c, 
            OwnerId, 
            SystemModstamp
            FROM Fee_Set__c"
          return feeSetStr
    end
  #MEETING_SCHEDULE_OBJ_NAME = "meeting_schedule__c"
    def getMeetingScheduleObjName
      return "meeting_schedule__c"
    end
  #MEETING_SCHEDULE_QUERY
    def getMeetingScheduleQuery
      meetingScheduleStr ="SELECT Id, 
                CreatedById, 
                CreatedDate, 
                IsDeleted, 
                Frequency__c, 
                LastModifiedById, 
                LastModifiedDate, 
                Name, 
                OwnerId, 
                Start_Date__c, 
                SystemModstamp 
                FROM Meeting_Schedule__c"
      return meetingScheduleStr
    end
  #MF_ACCOUNT_OBJ_NAME = "mf_account__c"
    def getMfAccountObjName
      return "mf_account__c"
    end
  #MF_ACCOUNT_QUERY
    def getMfAccountQuery
      mfAccountStr = "SELECT Id, 
              Acccount_Type_Multiplier__c, 
              Name, 
              Account_Type__c, 
              Balance__c, 
              Branch__c,  
              CreatedById, 
              CreatedDate, 
              IsDeleted, 
              Description__c, 
              FY_Closing_Balance__c, 
              Fiscal_Year__c, 
              Is_Master__c, 
              JV_Allowed__c, 
              LastModifiedById, 
              LastModifiedDate, 
              Long_Description__c, 
              OwnerId, 
              Parent_Account__c, 
              SystemModstamp, 
              isLeaf__c 
              FROM MF_Account__c"
      return mfAccountStr
    end
  #MF_ACCOUNT_TYPE_OBJ_NAME = "mf_account_type__c"
    def getMfAccountTypeObjName
      return "mf_account_type__c"
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
                FROM MF_Account_Type__c"
      return mfAccountTypeStr
    end
end