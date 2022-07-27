public class BubbleSort {

    public static void bubbleSortMethod(){
        List<Integer> values = new List<Integer>{10,9,8,7,6,5,4,3,2,1};

        integer iterationsize = values.size();
        integer temp = 0;
        
        for(integer i=0; i < iterationsize; i++){
            for(integer j=1; j < (iterationsize-i); j++){
                
                if(values[j-1] > values[j]){
                    //swap the elements!
                    temp = values[j-1];
                    values[j-1] = values[j];
                    values[j] = temp;
                }
            }
        }
        
        System.debug('values ' + values);
    }
}