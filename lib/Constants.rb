module MFiFlexConstants
      
      #CRM objects
      def getClientObjName
        return "mfiforce__Client__c"  
      end
      
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
        #GROUP_OBJ_NAME = "mfiforce__Group__c"
        #GROUP_OBJ_QUERY = ""
        
        #CENTER_OBJ_NAME = "mfiforce__Center__c"
        #CENTER_OBJ_QUERY = ""
        
        #MIS transactions
        
        #Accounting
      end
end