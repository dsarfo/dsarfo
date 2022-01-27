({
		createcaselist: function(component, event, helper) {
        
        var action = component.get("c.caselist1");
        action.setCallback(this,function(a){
            console.log(a.getReturnValue());  
            component.set("v.cas",a.getReturnValue());
            
            
        });
        $A.enqueueAction(action);
		
	},
      handleevent: function(component, event, helper) {
       // console.log('app event fired and handled');
        console.log('value recieved'+event.getParam("keys"));
        //
        
         var action = component.get("c.caselistchanged");
        action.setParams({keypress:event.getParam('keys')});
      
        action.setCallback(this,function(a){
            console.log(a.getReturnValue());  
            component.set("v.cas",a.getReturnValue());
            console.log(a.getStatus);
            
        })}
        
})