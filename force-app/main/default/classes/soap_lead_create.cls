Global class soap_lead_create {
Webservice static String callme(String first_name, String Last_name,String email, String phone)
{
String result;
Dom.Document doc=new Dom.Document();
Dom.XmlNode root=doc.createRootElement('Result',null,null);
try
{
Lead l=new Lead();
l.FirstName=first_name;
l.LastName=Last_name;
l.Email=email;

l.Phone=phone;
l.Company='xyz';
Insert l;
Dom.XmlNode status=root.addChildElement('isSuccess',null,null);
status.addTextNode('True');
Dom.XmlNode lnode=root.addChildElement('Lead',null,null);
status.addTextNode(''+l.Id);
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