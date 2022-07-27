public class ActiveUser1 {
    public static void mymethod()
    {
        List<User> userList = [SELECT Id,Name FROM User WHERE IsActive=true];
        Map<Id, User> userMap = new Map<Id, User>();
         for(User u: userList) {
         userMap.put(u.Id, u);
         System.debug(userMap);
}
    }

}