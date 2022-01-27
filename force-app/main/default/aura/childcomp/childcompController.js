({
	handleClick : function(component, event, helper) {
		console.log(component.get("v.childatt"));
        var x= component.getEvent("cmpevt");
        x.setParams({"testMsg":"child Message"});
        x.fire();
	},
    childmethod: function(component, event, helper) {
         debugger;
        console.log("from the child method");
    },
    
    secondChild: function(component, event, helper) {
         debugger;
        console.log("from the child second method");
    }
})