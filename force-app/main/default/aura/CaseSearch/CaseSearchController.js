({
	myAction : function(component, event, helper) {
		
	},
    	sendit : function(component, event, helper) {
        console.log(event.target.value);
        var x =$A.get("e.c:caseevent");
         x.setParams({"keys":event.target.value});
         x.fire();
	}
})