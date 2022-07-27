public class AccountExceptionExample {
    public void createaccount(String accname)
    {
        try{
        Account acc=new Account();
        acc.Name=accname;
        insert acc;
           Account acc1=[SELECT Id from account];
            system.debug('acc1.name'+acc1.Name);
        }
        catch(DmlException ex)
        {
          //throw new AccException ('Exception occrued'+ex.getMessage());
           system.debug('DmlException occrued'+ex.getMessage());
        }
         catch(QueryException ex)
        {
            system.debug('QueryException occrued'+ex.getMessage());
        }
          catch(Exception ex)
        {
            system.debug('Exception occrued'+ex.getMessage());
        }
        finally
        {
            system.debug('Finally block executed');
        }
    }
}