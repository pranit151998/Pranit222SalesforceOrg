Public class BinarySearchExample{  
 public static void binarySearch(list<integer> numval, integer first, integer last, integer key){  
     integer mid = (first + last)/2;
   while( first <= last ){ 
      if ( numval[mid] < key ){   
        first = mid + 1;    
      }else if (numval[mid] == key){  
        System.debug('Element is found at index: ' +  mid);  
        break;  
      }else{  
         last = mid - 1;  
      }  
      mid = (first + last)/2;  
   }  
   if ( first > last ){  
      System.debug('Element is not found!');  
   }  
 }
}