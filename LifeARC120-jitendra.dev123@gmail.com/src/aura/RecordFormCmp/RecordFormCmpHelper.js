({
//this function will fetch Accounts records from server
getAccounts : function(component, helper) {
        var action = component.get("c.getAllAccounts");
        action.setCallback(this,function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.data", response.getReturnValue());
            
            }
        });
        $A.enqueueAction(action);
    },
    saveDataTable: function(){
        
        
    }

})