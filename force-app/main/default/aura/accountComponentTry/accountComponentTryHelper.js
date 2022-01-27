({
    getAccounth1 : function(component,event, helper) {
        
        var recordid=component.get("v.recordId");
        
        var action =component.get("c.getAccountInfo");
        
        action.setParams({accountId : recordid});
        
        action.setCallback(this,function(a){
            console.log(a.getReturnValue());
            component.set("v.myRecord", a.getReturnValue());
            
        });
        $A.enqueueAction(action);
    }
})