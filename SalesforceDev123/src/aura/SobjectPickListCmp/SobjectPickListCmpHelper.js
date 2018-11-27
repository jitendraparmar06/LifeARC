({
	getListItem : function(component) {
        var action=component.get("c.getListItemMenu");
        action.setCallback(this,function(data){
            component.set("v.lists",data.getReturnValue());
        });
        $A.enqueueAction(action);
		
	},
    createRecord : function(component){
        var inputSecretField = component.find("Select");
        var inputSecret = inputSecretField.get("v.value");
        var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams({
            "entityApiName": inputSecret
        });
        createRecordEvent.fire();
    }
})