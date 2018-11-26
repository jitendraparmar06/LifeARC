trigger LeadFormTrigger on Lead (before insert, before update) {
    for(Lead obj :Trigger.new){
        if(obj.FirstName == 'Test'){
            obj.FirstName.addError('First name cannot be test');
        }
    }  
}