trigger emailAlert on Student__c (before insert,after insert) {
    List <Messaging.SingleEmailMessage> mailList = new List <Messaging.SingleEmailMessage>();
    for(Student__c stud: trigger.new)
    {
        if(String.isNotBlank(stud.Email_Id__c))
        {
            Messaging.SingleEmailMessage smail = new Messaging.SingleEmailMessage();
            smail.setToAddresses(new List<String> {stud.Email_Id__c});
            smail.setCcAddresses(new List<String> {stud.Student_Cc__c});
            smail.setCcAddresses(new List<String> {stud.Student_Bcc__c});
            smail.setSenderDisplayName('Pranit Sawant');
            smail.setSubject('Apex trigger');
            smail.setPlainTextBody('Hi its trigger email alert');
            mailList.add(smail);
        }
        else
        {
            stud.adderror('Invalid Field');
        }
    }
         if(!mailList.isEmpty())
         {
             messaging.sendEmail(mailList);
         }

}