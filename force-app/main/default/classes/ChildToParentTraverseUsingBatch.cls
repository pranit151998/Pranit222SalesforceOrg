global class ChildToParentTraverseUsingBatch implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        return Database.getQueryLocator('Select Id,FirstName,LastName,AccountId,LeadSource,Level__c,Account.Type,Account.Rating from Contact Where Leadsource=\'Web\' and (Level__c=\'Primary\' or Level__c=\'Secondry\')and Account.Type=\'Prospect\' and (Account.Rating=\'Hot\' or Account.Rating=\'Warm\')') ;
    }
    global void execute(Database.BatchableContext BC,List<Contact> conList)
    {
        Set<Id> accIdSet=new Set<Id>();
        if(!conList.isEmpty())
        {
            for(Contact objCon:conList)
            {
                if(objCon.AccountId!=null)
                {
                    accIdSet.add(objCon.AccountId);
                }
            }
        }
        Map<Id,Account> accMap=new Map<Id,Account>();
        for(Account objAcc:[Select Id,Description from Account where Id IN:accIdSet])
        {
            accMap.put(objAcc.Id, objAcc);
        }
        List<Account> accUpdateList=new List<Account>();
        if(!accMap.isEmpty())
        {
            for(Contact objCon:conList)
            {
                if(accMap.ContainsKey(objCon.AccountId))
                {
                    accMap.get(objCon.AccountId).Description=objCon.FirstName+' '+objCon.LastName;
                }
            }
        }
        accUpdateList.addAll(accMap.Values());
        if(!accUpdateList.isEmpty())
        {
            Database.update(accUpdateList,false);
        }
    }
    global void finish(Database.BatchableContext BC)
    {
        
    }
}