({
	myAction : function(component, event, helper) {
        debugger;
		component.find("childId").childm();
        component.find("childId").secChildm();
	},
    handleEvent : function(component, event, helper) {
		console.log(event.getParam("testmessage"));
        
	}
})