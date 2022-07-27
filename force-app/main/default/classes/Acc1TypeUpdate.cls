global class Acc1TypeUpdate implements Database.Batchable<sObject> {
 
  global Database.QueryLocator start(Database.BatchableContext BC)
  {
      String query = 'SELECT Id,Type,Rating,Ownership FROM Account WHERE CreatedDate >= 2021-02-01T01:02:03Z';
      return Database.getQueryLocator(query);
  }
    global void execute(Database.BatchableContext BC,List<Account> accList)
    {
        if(!accList.isEmpty())
        {
            for(Account ObjAcc: accList)
            {
                ObjAcc.type='Technology Partner';
                ObjAcc.ownership='Private';
                
            }    
        }
        Database.update(accList,false);
    }
    global void finish(Database.BatchableContext BC)
    {
        
    }                      

}