@RestResource(urlMapping='/v1/contactDetailsRestApiPost/')
global with sharing class contactDetails{
  
    //POST METHOD
    @httpPost
    global static Contact contactDetailsRestApiPost(String firstName,String lastName,String mobilePhone,String leadSource){
        
        Contact contact = new Contact();
        contact.FirstName=firstName;
        contact.LastName=lastName;
        contact.MobilePhone=mobilePhone;
        contact.LeadSource=leadSource;
        insert contact;
        return contact;
    }
}