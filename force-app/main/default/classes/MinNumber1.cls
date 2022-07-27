public class MinNumber1 {
    public static void minnumber(Integer [] a)
    {
        Integer min=a[0];
        for(Integer i=0;i<a.size();i++)
        {
           if(a[i]<min)
               min=a[i];
        } 
          system.debug(min);
    }

}