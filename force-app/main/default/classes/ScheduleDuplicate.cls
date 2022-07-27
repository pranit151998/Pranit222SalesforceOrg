global class ScheduleDuplicate implements Database.Batchable<sObject>, Database.Stateful{
    Map<String, integer> count = new Map<String, integer>();
    global ScheduleDuplicate(){
        Database.QueryLocator q= Database.getQueryLocator([Select email from lead]);
        Database.QueryLocatorIterator iterator = q.iterator(); 
        
        while(iterator.hasNext()){
            Lead leadrecord = (lead)iterator.next();
            if(leadrecord.get('email')!=null){
                count.put((String)leadrecord.get('email'), 0);
            }
        }
    }
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select email from lead]);
    }
    
    global void execute(Database.BatchableContext bc, List<sObject> scope){
        List<lead> leadlist = new List<lead>();
        for(sObject lead: scope){
            if(lead.get('email')!= null){
                if(count.get((String)lead.get('email')) >= 1){
                    leadlist.add((Lead)lead);
                }else{
                    count.put((String)lead.get('email'), 1);
                }
            }
        }
        Database.delete(leadlist, false);
    }
    
    global void finish(Database.BatchableContext bc){
        
    }
}