trigger ApexTrigger1 on Account (before Update) {
    Account a=Trigger.new[0];
    a.name=a.Name+'Limited';

}