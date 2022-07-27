public class EnrollmentDemo {
    public static void mymethod()
    {
        //list<Account> acclist=[SELECT name FROM account WHERE 	Enrollment_Year__c='2010'];
        list<Account> acclist=[SELECT name FROM account WHERE 	Enrollment_Year__c='2013;2014'];
        system.debug(acclist);
    }

}