public class SelectionSort
{
    public static void selectionSorting(Integer [] sortlist)
    {
         integer len = sortlist.size();
 
        for (integer i = 0; i < len-1; i++)
        {
             integer min = i;
            for (integer j = i+1; j < len; j++)
                if (sortlist[j] < sortlist[min])
                    min = j;
            integer temp = sortlist[min];
            sortlist[min] = sortlist[i];
            sortlist[i] = temp;
        
        }
    
}
}