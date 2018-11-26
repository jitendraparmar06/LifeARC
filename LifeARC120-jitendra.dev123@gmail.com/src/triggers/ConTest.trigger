trigger ConTest on Account(after insert,after Update)
{
    if(trigger.isInsert && trigger.isAfter)
    {
        List<Contact> lstCon = new List<Contact>();
        for(Account acc : trigger.new)
        {
            Contact con = new Contact();
            con.lastName=acc.Name;
            con.AccountId = acc.Id;
            lstCon.add(con);
        }
        insert(lstCon);
    }
    
    if(trigger.isUpdate && trigger.isAfter)
    {
        Map<Id,Account> mapACC = new Map<Id,Account>([select (select id,name from contacts) from account where id IN: trigger.new]);
        List<Contact> newCon = new List<Contact>();
        for(Account updatedAcc : trigger.New)
        {
            Account oldAcc = trigger.oldMap.get(updatedAcc.Id);
            if(mapACC.ContainsKEY(updatedAcc.Id) && oldAcc.Name != updatedAcc.Name)
            {
                for(Contact con : mapACC.get(updatedAcc.Id).contacts)
                {
                    con.lastname = updatedAcc.Name;
                    newCon.add(con);
                }
            }
        }
        update newCon;
    }
}