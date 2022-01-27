({
    getAccount : function(component,event,helper) {
	//window.alert('Implements from the Helper Js');
       var recordid= component.get("v.recordId");
        debugger;
        var acctinfo =	component.get("c.getAccountInfo");
        acctinfo.setParams({
            accountId : recordid
        });
        acctinfo.setCallback(this,function(ams){
         var stat = ams.getState();
            if (stat==="SUCCESS"){
                var resu = ams.getReturnValue();
                console.log(resu);
                component.set("v.myAccount",resu);
            }else{
            console.log(stat);
            }
        });
        $A.enqueueAction(acctinfo);
    },
	
    editRecord: function(component, event, helper){
        var recId = component.get("v.recordId");
        var editRecordEvent= $A.get("e.force:editRecord");
        editRecordEvent.setParams({
            "recordId" : recId
        
        });
        editRecordEvent.fire();
    }
})