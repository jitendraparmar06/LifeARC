({
    jsLoaded: function(component, event, helper) {
        component.rerender();
    },
    
    accountsChangeHandler: function(component, event, helper) {
        helper.addMarkers(component);
	},
    
    // Center the map on the account selected in the list
    selectedAccountChangeHandler: function(component, event) {
        var account = event.getParam("value");
        var map = component.get("v.map");
        if (account && map) {
	        map.panTo([account.Location__Latitude__s, account.Location__Longitude__s]);
        }
	}

})