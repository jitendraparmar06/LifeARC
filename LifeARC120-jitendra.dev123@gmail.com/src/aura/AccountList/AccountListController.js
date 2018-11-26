({
    accountSelected: function(component, event) {
        var accounts = component.get("v.accounts");
        // Get the selected account
        var account = accounts[event.currentTarget.dataset.index];
        // Fire the accountSelected event
        var accountSelectedEvent = component.getEvent("accountSelected");
        accountSelectedEvent.setParams({account: account});
        accountSelectedEvent.setParams({target: event.target.className==="address" ? "address" : undefined});
        accountSelectedEvent.fire();
    }
})