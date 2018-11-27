({
	getLeafletMap : function(component, latitude, longitude) {

		var leafletMap = component.get('v.leafletMap');

		if (!leafletMap) {
	    	var mapContainer = component.find('map').getElement();

		    leafletMap = L.map(mapContainer, {zoomControl: false, tap: false})
		    	.setView([latitude, longitude], 13);
		    component.set('v.leafletMap', leafletMap);
            
		} else {
        leafletMap.setView([latitude, longitude], 13);
        }
		return leafletMap;
        
	},
   
    navigateToDetailsView : function(boatId1) {
        var event = $A.get("e.force:navigateToSObject");
        event.setParams({
            "recordId": boatId1.Id
        });
        event.fire();
    }


})