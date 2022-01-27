({
	createStudentlist : function(component, event, helper) {
		var st = component.get("c.studentlist");
        st.setCallback(this,function(a){console.log(a.getReturnValue());
                                        component.set("v.stud",a.getReturnValue());
    });
    $A.enqueueAction(st);
	},
  newStudent  : function(component, event, helper) {
		var st = component.get("c.studentlist");
        st.setCallback(this,function(a){console.log(a.getReturnValue());
                                        component.set("v.stud",a.getReturnValue());
    });
    $A.enqueueAction(st);
	}
    
})