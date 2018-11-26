({
    updateValue : function(component, event, helper) {
        var val = component.find("myInput").get("v.value");
;
        component.set("v.greeting", val);
    }
})