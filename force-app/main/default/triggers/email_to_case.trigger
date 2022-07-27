trigger email_to_case on Case (before insert) {

    list<Contact> getcon;
    for(Case cs: Trigger.new)
    {
        getcon=[select Name,Email from Contact where Email=: cs.SuppliedEmail limit 1];
        if(getcon.isEmpty())
        {
            contact n= new contact();
            n.LastName=cs.SuppliedName;
            n.Email=cs.SuppliedEmail;
            Insert n;
            cs.ContactId=n.Id;
        }
        else
        {
			cs.ContactId=getcon[0].Id;
        }
        if(cs.RecordTypeId=='0125g000001DzIKAA0')
        {
            cs.Type='Entertainment';
        }
        else if(cs.RecordTypeId=='0125g000001DzIPAA0')
        {
            cs.Type='Sports';
        }
    }
}