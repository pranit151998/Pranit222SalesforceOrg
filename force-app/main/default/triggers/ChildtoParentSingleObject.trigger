trigger ChildtoParentSingleObject on Contact (before insert) {
    
    Set<Id> accIdSet=new Set<Id> ();
    for(Contact objcon : trigger.new)
    {
        if(objcon.AccountId!=null)
        {
            accIdSet.add(objcon.AccountId);
        }    
    }
    
    Map<Id,Account> accMap=new Map<Id,Account>();
    if(!accIdSet.isEmpty())
    {
        for(Account objAcc:[Select Id,Description from Account where Id IN:accIdSet])
        {
            accMap.put(objAcc.Id,objAcc);
        }
    }
    if(!accMap.isEmpty())
    {
        
        for(Contact objcon:trigger.new)
        {
            if(accMap.containsKey(objcon.AccountId))
            {
                objcon.Description=accMap.get(objcon.AccountId).Description;
            }
        }
    }
    
}