trigger CopyAccount on Account (before insert) {
    if(CheckRecursive.runonce())
    {
        List <account> acc=new List<account>();
        for(Account rec:trigger.new)
        {
            
        }
        
    }

}