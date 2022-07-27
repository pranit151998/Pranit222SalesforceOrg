public class MaxNumber1 {
    public static void maxnumber(Integer [] a)
    {
        Integer max=a[0];
        for(Integer i=0;i<a.size();i++)
        {
           if(a[i]>max)
               max=a[i];
        } 
          system.debug(max);
    }
}