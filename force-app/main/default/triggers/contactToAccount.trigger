trigger contactToAccount on Contact (after insert) {
    for(contact con : trigger.new)
    {
        Id accid = [select Id,Description from account where Id=:con.AccountId].Id;
        
        Account obj = new Account();
        obj.Id=accId;
        obj.Description=con.FirstName+' '+con.LastName;
        update obj;
        
        
    }

}