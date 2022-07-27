trigger AccountToContactParentToChild_1 on Account (after update) {
    
    Map <Id,Account> accMap = new Map<Id,Account>();
    for(Account objAcc : trigger.new)
    {
      
            if(objAcc.Type!=trigger.oldMap.get(objAcc.Id).Type)
            {
                accMap.put(objAcc.Id, objAcc);
            }
        
    }
    
    List <Contact> conlist = new list<Contact>();
    if(!accMap.isEmpty())
    {
        for(Contact con:[Select Id,AccountId From Contact where AccountId IN:accMap.keySet()])
        {
            conList.add(con);
        }
    }
    if(!conList.isEmpty())
    {
        
        for(Contact con:conList)
        {
            if(accMap.containsKey(con.AccountId))
            {
                if(accMap.get(con.AccountId).Type=='Technology Partner')
                {
                    con.LeadSource='Purchased List';
                }
                else
                {
                     if(accMap.get(con.AccountId).Type=='Customer - Channel')
                {
                    con.LeadSource='Web';
                
                }
                     else
                     {
                         if(accMap.get(con.AccountId).Type=='Other')
                       {
                    con.LeadSource='Other';
                       }
                     }
                }
            }
        }
    }
    if(!conList.isEmpty())
    {
        Database.update(conList,false);
    }
    
}