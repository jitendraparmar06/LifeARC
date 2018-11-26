({    
    handleMenuSelect: function(component, event, helper) {
        var selectedMenu = event.detail.menuItem.get("v.value");
        console.log('selectedMenu-' + selectedMenu);
        switch(selectedMenu) {
            case "new":
                //do create
                break;
            case "edit":
                //do edit
                break;
            case "delete":
                //do delete
                break;
        }
    }
})