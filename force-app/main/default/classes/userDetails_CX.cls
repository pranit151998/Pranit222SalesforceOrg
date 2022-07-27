public class userDetails_CX {
 public List<User> records{get;set;}
    public userDetails_CX(ApexPages.StandardSetController controller) 
    {
    
     records=[SELECT id ,Name,Email,IsActive FROM User WHERE IsActive=TRUE ];
     
    }

 

}