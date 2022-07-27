public class InsertionSort
{
 public static void InsertionSortMethod()
{
List<integer> l1 = new List<integer>{12, 11, 13, 5, 6};         
    for (integer i = 1; i < l1.size(); i++) 
        { 
            integer key = l1[i];
            integer j = i - 1; 
            while (j >= 0 && l1[j] > key) 
            { 
                l1[j + 1] = l1[j];
                j = j - 1; 
            } 
            l1[j + 1] = key; 
            system.debug(l1);
        }
}
}