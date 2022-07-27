@RestResource(urlMapping='/v1/studentDetailsRestApi/')
global class studentDetails{
    @httpGet
    global static Student_Details__c doGetpilotDetails()
    {
        Student_Details__c objStud = new Student_Details__c();
        Map<String,String>paramMap = RestContext.request.params;
        String studid = paramMap.get('Id');
        objStud=[Select Id,First_Name__c,Gender__c from Student_Details__c where Id=:studid];
        return objStud;
        
    }
    @httpDelete
    global static String  doDeletestudDetails()
    {
        Student_Details__c objStud = new Student_Details__c();
        Map<String,String>paramMap = RestContext.request.params;
        String studid=paramMap.get('Id');
        objStud=[Select Id,First_Name__c,Gender__c from Student_Details__c where Id=:studid];
        delete objStud;
        return'Record Deleted';
    }
    
    
}