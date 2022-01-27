({
	calculate : function(component, event, helper) {
		var a=component.get("v.numf");
        var b=component.get("v.nums");
       // alert(a+b);
     component.set("v.res",a+b);
	},
     navToRecord : function (component, event, helper) {
        var navEvt = $A.get("e.force:navigateToSObject");
        navEvt.setParams({
            "recordId": component.get("v.Account.Id")
        });
            navEvt.fire();
    },
    editRecord : function(component, event, helper){
        helper.showHide(component);
    },
    handleSuccess : function(component, event, helper) {
    var toastEvent = $A.get("e.force:showToast");
    toastEvent.setParams({
        "title": "Success!",
        "message": "The property's info has been updated.",
        "type": "success"
    });
    toastEvent.fire();
    helper.showHide(component);
},
handleCancel : function(component, event, helper) {
    helper.showHide(component);
    event.preventDefault();
}

})