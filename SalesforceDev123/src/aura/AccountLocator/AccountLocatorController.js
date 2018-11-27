({
	doInit : function(component, event, helper) {
        // Find the children accounts of the current account
        // If there is not current account we pass a hardcoded for testing
        // Change that hardcoded value to the Id of an existing account in your org
        var action = component.get("c.findByParent");
        action.setParams({parentId: component.get("v.recordId") || '00161000007OqT2AAK'});
        action.setCallback(this, function(a) {
			component.set("v.accounts", a.getReturnValue());
        });
        $A.enqueueAction(action);
    },

	onAccountSelected : function(component, event, helper) {
        var account = event.getParam("account");
        var target = event.getParam("target");
        if (target === "address") {
			// Set selectedAccount attribute to center map on that account
            component.set("v.selectedAccount", account);
        } else {
			// Open default details page
            var evt = $A.get("e.force:navigateToSObject");
            if (evt) {
                evt.setParams({"recordId": account.Id});
                evt.fire();
            }
        }
	}

})