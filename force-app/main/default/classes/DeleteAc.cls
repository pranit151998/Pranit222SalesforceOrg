public class DeleteAc {
    public static void m1()
    {
        {
        List<Account> acc =[select id from Account
                          WHERE Active__c = 'No' AND CreatedDate != LAST_N_DAYS:10];
        delete acc;
            system.debug(acc);
   }
    }

}