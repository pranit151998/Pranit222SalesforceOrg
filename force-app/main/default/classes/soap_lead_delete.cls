Global class soap_lead_delete {
Webservice static String callme1(String first_name, String Last_name,String email, String
phone)
{
String result;

String fullname;
Dom.Document doc=new Dom.Document();
Dom.XmlNode root=doc.createRootElement('Result',null,null);
try
{
List<Lead> l=[select FirstName,LastName from Lead where FirstName= :first_name And
LastName=:Last_name And Email=:email And Phone=:phone limit 1];
for(Lead a:l)
{
fullname= a.FirstName+' '+a.LastName;
}
delete l;

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