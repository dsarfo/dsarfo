({
	helperMethod : function(component) {
	     var a=component.get("v.Amount");
        var b=component.get("v.Tenure");
        if(b>15){
            a=a+15;
            component.set("v.returnval",a);
        }
        else{
            a=a-15;
            component.set("v.returnval",a);
        }	
	}
})