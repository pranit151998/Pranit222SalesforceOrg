trigger trigger2 on EFT_TRANSCATION__c (before insert) {
   
   list <EFT_TRANSCATION__c> l1=[select Method_Name__c,Transaction_Status__c,	EFT_Transaction_StatusTOSalesheader__r.Status__c
                                        from EFT_TRANSCATION__c];
   for(EFT_TRANSCATION__c e:l1)
   {
       for(EFT_TRANSCATION__c e1: Trigger.new)
       {
           if(e1.Method_Name__c =='Credit Card Address Verify')
               e1.Method_Name__c.addError('Method already exist');
           else if(e1.Transaction_Status__c == 'Declined')
               e1.Transaction_Status__c.addError('Status already exist');
           else if(e1.EFT_Transaction_StatusTOSalesheader__r.Status__c=='Open')
               e1.EFT_Transaction_StatusTOSalesheader__r.Status__c.addError('Status already exist');
           
       }
   }
   
   }