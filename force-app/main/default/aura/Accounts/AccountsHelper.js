({
	fetchAccount1 : function(component, event, helper) {
        debugger;
        
        var action = component.get("c.getAccounts");
        action.setCallback(this, function(response){
            var state = response.getState();
            //console.log(response.getReturnValue());
            if(state === "SUCCESS"){
              var re =  response.getReturnValue();
                component.set("v.records",re);
            }else alert(state);
        });
        $A.enqueueAction(action);
		
	}
})