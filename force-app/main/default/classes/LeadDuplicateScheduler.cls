global class LeadDuplicateScheduler implements Schedulable{
    global void execute(SchedulableContext sc){
       ScheduleDuplicate sd = new ScheduleDuplicate();
        Database.executeBatch(sd);
    }

}