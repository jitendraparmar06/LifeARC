({
	create : function(component, event, helper) {
		console.log('Create record');
        
        //getting the candidate information
        var student = component.get("v.student");
        
      /**  Validation
        if($A.util.isEmpty(student.Name__c) || $A.util.isUndefined(student.Name__c)){
            alert('Name is Required');
            return;
        }            
        if($A.util.isEmpty(student.DOB__c) || $A.util.isUndefined(student.DOB__c)){
            alert('DOB is Rqquired');
            return;
        }
        if($A.util.isEmpty(student.Email__c) || $A.util.isUndefined(student.Email__c)){
            alert('Email is Required');
            return;
        } **/
      
        //Calling the Apex Function
        var action = component.get("c.createRecord");
        
        //Setting the Apex Parameter
        action.setParams({
            student : student
        });
        
        //Setting the Callback
        action.setCallback(this,function(a){
            //get the response state
            var state = a.getState();
            
            //check if result is successfull
            if(state == "SUCCESS"){
                //Reset Form
                var newStudent = {'sobjectType': 'Student__c',
                                    'Name__c': '',
                                    'DOB__c': '',
                                    'Email__c': ''
                                  
                                   };
                //resetting the Values in the form
                component.set("v.student",newStudent);
                alert('Record is Created Successfully');
            } else if(state == "ERROR"){
                alert('Error in calling server side action');
            }
        });
        
		//adds the server-side action to the queue        
        $A.enqueueAction(action);

	}
})