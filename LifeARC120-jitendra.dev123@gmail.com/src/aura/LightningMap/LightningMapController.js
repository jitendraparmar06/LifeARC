({
    jsLoaded: function(component) {
        component.set("v.jsLoaded", true);
    },
    
    doInit: function(component,event,helper) {
        var jetId = component.get("v.recordId");
        var action = component.get("c.jetAll");
        action.setParams({
            jetId: jetId
        });
        action.setCallback(this,function(a){
           var jet = a.getReturnValue();
    	   var latitude = jet.Location__Latitude__s;
    	   var longitude = jet.Location__Longitude__s;
    	   var label = jet.Name;
           var leafletMap = helper.getLeafletMap(component, latitude, longitude);
		L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/tile/{z}/{y}/{x}', {
		    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
		}).addTo(leafletMap);
		
		L.marker([latitude, longitude]).addTo(leafletMap)
		    .bindPopup(label);
		   // .openPopup().on('click', function(event) {
            // helper.navigateToDetailsView(boatId1);
            
        //}
        //)
});

      
}
    
})