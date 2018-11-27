({
    doInit : function(component, event, helper) {
        //creating datatable columns
        component.set('v.columns', [
            {label: 'Id', fieldName: 'Id', type: 'Id'},
            {label: 'Name', fieldName: 'Name', type: 'text'},
            {label: 'Action', type: 'button', initialWidth: 135, typeAttributes:
               { label: 'View', name: 'view_details', title: 'Click to View or Edit Details'}}
            
        ]);
        //getting Accounts records from server by calling helper methods
        helper.getAccounts(component, helper);

    },
    //this function will be called when view button is pressed in datatable
    handleRowAction: function (component, event, helper) {
        var action = event.getParam('action');
        var Acc = event.getParam('row');
        switch (action.name) {
            case 'view_details':
                component.set("v.recordId", Acc.Id);
                break;
            default:
                component.set("v.recordId", Acc.Id);
                break;
        }
        if(component.get("v.recordId")){
            component.set("v.showDetails", true);
        }
    },
})