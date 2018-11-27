trigger LeadConversionTrigger on Lead (After insert) {
    for(Lead newLead:[SELECT Id,Status, LastName,Company,RecordTypeId FROM Lead where Id IN:trigger.new] ){
        if(newLead.RecordTypeId=='0127F000001BgXZQA0' && newLead.status=='Closed - Converted'){
           LeadConversionClass.LeadConversionMethod(trigger.new);
        }
        
    }
}