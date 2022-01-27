({handleClick: function(component,event,helper){
  component.set("v.flag",false);  
},
    doInit : function(component, event, helper) {
 var action=component.get("c.fetchdata");
        action.setParams({idd:component.get("v.recordId")});
        action.setCallback(this,function(a){
                           console.log(a.getReturnValue());
        				component.set("v.con",a.getReturnValue());
                           });
        $A.enqueueAction(action);
        
		
	},
	handleClick : function(component, event, helper) {
        var action;
   
        if(!component.get("v.recordId")){
           action=component.get("c.conli");
            action.setParams({lastname:component.get("v.con.LastName")});
            
        }
        else{
                 
       action=component.get("c.contactupdate");
            action.setParams({lname:component.get("v.con.LastName"),idd:component.get("v.recordId")});
        }
        
        action.setCallback(this,function(a){
                           console.log(a.getReturnValue());
            //vheck if there is an error
            debugger;
            if(a.getReturnValue().indexOf("error") >0){
                component.set('v.errorMessage',a.getReturnValue());
                component.set('v.flag',true);
            }else{
                component.set('v.flag',false);
        				component.set("v.con",a.getReturnValue());
            var event = $A.get('e.force:navigateToSObject');
event.setParams({"recordId": a.getReturnValue(),"slideDevName": "related"});
 event.fire(); 
            }
            
                           });
        $A.enqueueAction(action);
			
	}
})