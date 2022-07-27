Global class soap_lead_update {

Webservice static String callme(String first_name, String Last_name,String new_email,
String new_phone)
{
String result;
String fullname;
Dom.Document doc=new Dom.Document();
Dom.XmlNode root=doc.createRootElement('Result',null,null);
try
{
List<Lead> l=[select Id,FirstName,LastName from Lead where FirstName= :first_name
And LastName=:Last_name limit 1];
for(Lead a:l)
{
a.Email=new_email;
a.Phone=new_phone;
fullname= a.FirstName+' '+a.LastName;
}
update l;

Dom.XmlNode status=root.addChildElement('isSuccess',null,null);
status.addTextNode('True');
Dom.XmlNode lnode=root.addChildElement('Lead',null,null);
status.addTextNode(''+fullname);

Dom.XmlNode idnode=root.addChildElement('Status',null,null);
status.addTextNode('Success');
}
catch(Exception e)
{
Dom.XmlNode status=root.addChildElement('isSuccess',null,null);
status.addTextNode('False');
Dom.XmlNode lnode=root.addChildElement('Lead',null,null);
status.addTextNode('');
Dom.XmlNode idnode=root.addChildElement('Status',null,null);
status.addTextNode(''+e.getMessage());
}
result=doc.toXmlString();
return result;
}
}