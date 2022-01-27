({
	fetchAccounts : function(component, event, helper) {
        helper.fetchAccount1(component, event, helper);
		
	},
    handleChange: function(component, event, helper){
        var changedValue= event.getParam("value");
        component.set("v.SelectDisplayOption",changedValue);
    }
})