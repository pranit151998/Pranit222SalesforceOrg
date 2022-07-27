public class LoopDemo {
    public static void main()
    {
        List<Account> acclist=[SELECT Name,Phone From Account];
        /*fetching records with traditional for loop*/
        /*for(integer i=0;i<accList.size();i++)
          {
               System.debug(acclist[i]);
          }
        /*fetching records with traditional for loop*/
        
        /*for(Account Acc:acclist)
        {
            System.debug(Acc);
        }*/
    integer i=0;
        while( i<accList.size())
        {
            System.debug(acclist[i]);
            i++;
        }
     }
}