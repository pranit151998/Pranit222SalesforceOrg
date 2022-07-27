public with sharing class eg2_Datatable {
   
 @AuraEnabled(cacheable=true)
public static List<Contact> getContactList()
{
return [Select Id,FirstName,LastName,Phone,Email from Contact ];
}

    }