@RestResource(urlmapping='/Leads/*')
global with sharing class LeadApi {
    
    @HttpPost
    global static void createlead(String fname,String lname,String company){
        String Status;
        Boolean isSuccess;
        String lead;
        
        Lead l = new Lead();
        l.FirstName=fname;
        l.LastName=lname;
        l.Company=company;
        Database.SaveResult sr = Database.insert(l,false);
        
        if(sr.isSuccess()){
            isSuccess = True;
            lead =l.id;
            Status = 'Success';
        }else{
            isSuccess = False;
            lead = '';
            Status = 'The lead not created';
        }
        String body = ' isSuccess: ' + isSuccess + ',\n' +
            ' lead:  ' + lead + ',\n' + 
            ' Status: ' + status;
        RestContext.response.responseBody = Blob.valueOf(body);
   }
    
    @HttpDelete
    global static void deletelead(){
        String Status;
        Boolean isSuccess;
        String lead;
        
        RestRequest res = RestContext.request;
        String leadid = res.requestURI.substring(res.requestURI.lastIndexOf('/')+1);
        lead l1 = [select id from lead where id= :leadid];
        
        Database.DeleteResult sr = Database.delete(l1,false);
        
        if(sr.isSuccess()){
            isSuccess = True;
            lead =l1.id;
            Status = 'Success';
        }else{
            isSuccess = False;
            lead = '';
            Status = 'The lead not Deleted';
        }
        String body = ' isSuccess: ' + isSuccess + ',\n' +
            ' lead:  ' + lead + ',\n' + 
            ' Status: ' + status;
        RestContext.response.responseBody = Blob.valueOf(body);
    }
    
    @HttpPatch
    global static void updatelead(){
        String Status;
        Boolean isSuccess;
        String lead;
        
         RestRequest res = RestContext.request;
        String leadid = res.requestURI.substring(res.requestURI.lastIndexOf('/')+1);
        lead l1 = [select id from lead where id= :leadid];
        Map<String,object> s = (Map<String,object>)JSON.deserializeUntyped(res.requestBody.toString());
        for(String fieldName : s.keySet()){
            l1.put(fieldName,s.get(fieldName));
        }
        Database.SaveResult sr = Database.update(l1,false);
        
        if(sr.isSuccess()){
            isSuccess = True;
            lead =l1.id;
            Status = 'Success';
        }else{
            isSuccess = False;
            lead = '';
            Status = 'The lead not Updated';
        }
        String body = ' isSuccess: ' + isSuccess + ',\n' +
            ' lead:  ' + lead + ',\n' + 
            ' Status: ' + status;
        RestContext.response.responseBody = Blob.valueOf(body);
     }
 }