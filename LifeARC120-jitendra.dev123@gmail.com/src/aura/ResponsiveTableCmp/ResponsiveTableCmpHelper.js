({
	doInit : function(component, event, helper) {
        var jsonData = JSON.parse(helper.getSampleJSON());
        console.log(jsonData); 
        component.set("v.gridData",jsonData);
	},
    getSampleJSON : function(){
        return '{"rows":[{"vals":[{"val":"Salesforce","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@Salesforce.com","cssClass":""},{"val":"8602229632","cssClass":"responsiveHide"}]},{"vals":[{"val":"Microsoft","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@microsoft.com","cssClass":""},{"val":"8602283222","cssClass":"responsiveHide"}]},{"vals":[{"val":"SAP","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@SAP.com","cssClass":""},{"val":"8600942222","cssClass":"responsiveHide"}]},{"vals":[{"val":"Google","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@Google.com","cssClass":"responsiveHide"},{"val":"8602479222","cssClass":"responsiveHide"}]}],"headers":[{"title":"Client Name","isSortable":false,"dataType":"","cssClass":""},{"title":"Address","isSortable":false,"dataType":"","cssClass":""},{"title":"Email","isSortable":false,"dataType":"","cssClass":"responsiveHide"},{"title":"Mobile","isSortable":false,"dataType":"","cssClass":"responsiveHide"}]}';
    }
})