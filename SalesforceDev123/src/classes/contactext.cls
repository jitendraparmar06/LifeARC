public with sharing class contactext {
    
    public contact con;   
    public contactext(ApexPages.StandardController std){        
        con = (contact)std.getrecord();        
    }
    
    public pagereference savedata(){        
        try{            
            insert con;
            apexpages.addmessage(new apexpages.Message(apexpages.severity.confirm,'Contact Saved'));           
        }catch(exception e){            
            apexpages.addMessages(e);            
        }        
        pagereference pg = new PageReference('/' + con.Id);
        pg.setredirect(true);        
        return pg;        
    }        
}