public class Billstate {
   
    public static void m1()
    {
        List<Account> accList3=new List<Account>();
        accList3=[SELECT name FROM account WHERE BillingState!='Maharashtra' OR BillingState!='Kerala' ORDER BY BillingState DESC NULLS LAST LIMIT 10000];
        System.debug('accList3'+accList3); 
    }

}