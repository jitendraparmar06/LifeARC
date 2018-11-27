({
	/**handleUpdateStudents : function(component, event, helper) {
		console.log("Handling update event");
        //debugger;
        var student = event.getParam("student");
        console.log(student);
        var students = component.get("v.students");
        students.push(student);
        component.set("v.students", students);
	}, **/
    doInit : function(component, event, helper){
        console.log("Initializing student list component");
        var action = component.get("c.getAllStudents");
        
        action.setCallback(this, function(response){
           // console.log(response.getReturnValue());
            
            if(component.isValid() && response.getState()==="SUCCESS"){
                component.set("v.students", response.getReturnValue());
                console.log('Student list: '+JSON.stringify(response.getReturnValue()));
            }
        });
        
        $A.enqueueAction(action);
        
        helper.setColumns(component);
    }
})