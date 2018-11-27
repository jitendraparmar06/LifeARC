({
    createComponent : function(component, event, helper) {
        var isButtonVisible = component.get("v.IsBottonVisible");
        if(isButtonVisible == false){
      $A.createComponents([["lightning:button",{
        "aura:id" : "btn1",
        "label" : "search",
        "onclick": component.getReference("c.DestroyMe")
    }],
       ["lightning:button",{
           "aura:id" : "btn2",
           "label": "find",
            "onclick":component.getReference("c.DestroyMe1")
    }]], function(components, status, errorMessage){
                    if (status === "SUCCESS") {
                        var cmp1 = components[0];
                        var cmp2 = components[1];
                        var body = component.get("v.body");
                        body.push(cmp1);
                        body.push(cmp2);
                        component.set("v.body", body);
                        isButtonVisible= true;
                        component.set("v.IsBottonVisible", isButtonVisible);
                    }
                    else if (status === "ERROR") {
                        console.log("Error: " + errorMessage);
                    }
                }
            );
        }       
    },

    DestroyMe : function(cmp) {
        // Find the button by the aura:id value
        console.log("button: " + cmp.find("btn1"));
        var comp = cmp.find("btn1");
        comp.destroy();
        cmp.set("v.IsBottonVisible", false);
    },
    DestroyMe1 : function(cmp) {
        // Find the button by the aura:id valuey();
        console.log("button: " + cmp.find("btn2"));
        var comp = cmp.find("btn2");
        comp.destroy();
        cmp.set("v.IsBottonVisible", false);
    }

})