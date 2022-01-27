({
	handleClick : function(component, event, helper) {
        var recordI =component.get("v.recordId");
        if(recordI)
        helper.getAccount(component,event,helper);
		var act = component.find("txtName").get("v.value");
        console.log('--------------> '+act);
        component.set("v.userInput",act);
	},
    editRecord: function(component, event, helper) {
        var recId = component.get("v.recordId");
        var editRecordEvent= $A.get("e.force:editRecord");
        editRecordEvent.setParams({
            "recordId" : recId
        
        });
        editRecordEvent.fire();
    }
})