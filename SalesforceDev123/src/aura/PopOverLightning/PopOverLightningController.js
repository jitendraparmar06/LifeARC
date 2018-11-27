({

    handleShowPopover : function(component, event, helper) {

        var selectedItem = event.getSource().get("v.name");

        var selectedItemCss = event.getSource().get("v.value");

        var str = "";

        str += "."+selectedItemCss ;

        component.find('overlayLib').showCustomPopover({

            body: selectedItem,

            referenceSelector: str,

            cssClass: "popoverclass"

        }).then(function (overlay) {

            setTimeout(function(){

                //close the popover after 1 seconds

                overlay.close();

            }, 1000);

        });

    },

})