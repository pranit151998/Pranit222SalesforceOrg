public class pilotCustomDataTable_CX {

public pilotCustomDataTable_CX(ApexPages.StandardSetController controller) {

}
 
 public List<User> activeUserList{get;set;}
public void showRecord()
{

//objpilotList= [Select First_Name__c,Last_Name__c,Gender__c,Mobile_No__c,LastModifiedDate from Pilot_Details__c where Gender__c='Female' order by LastModifiedDate desc LIMIT 5];
activeUserList = [Select id from User where IsActive = true];

}



}