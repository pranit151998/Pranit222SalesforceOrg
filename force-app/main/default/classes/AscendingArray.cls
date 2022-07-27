public class AscendingArray {
    public static void AscendingArray(Integer[] a)
    {
        Integer temp=0;
        for(Integer i=0;i<a.size();i++)
        {
            for(Integer j=i+1;j<a.size();j++)
            {
                if(a[i]>a[j])
                {
                    temp=a[i];
                    a[i]=a[j];
                    a[j]=temp;
                }
            }
        } 
        for(Integer i=0;i<a.size();i++)
        {
        system.debug(a[i]+ '   ' );
        }
        
    }
}