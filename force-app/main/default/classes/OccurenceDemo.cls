public class OccurenceDemo {
    public static void Frequency(Integer [] a)
    {
        Integer count;
        for(Integer i=0;i<a.size();i++)
        {
            count=1;
            for(Integer j=i+1;j<a.size();j++)
            {
                if((a[i])==a[j] && a[j]!=0)
                {
                    count=count+1;
                    a[j]=0;
                }
            }
            if(a[i]!=0)
               system.debug('Number:Apperance'+a[i]+ ':' + count);
        }
    }

}