({
    myAction : function(component, event, helper) {
   helper.helperMethod(component);
          },
    validate : function (component, event, helper) {
    if(component.find("txtAmount").get("v.value")>999){
    component.find("txtAmount").set("v.errors",[{message:"Amount cannot be more than 999"}]);
component.set("v.enable","true");
}
else{
    component.find("txtAmount").set("v.errors",[{message:""}]);
component.set("v.enable","false");
}
},
    Pars : function(component,event,helper){
        var a=0;
        if(component.find("txtNumber").get("v.value") !=false){
            
            if(sessionStorage.getItem("total")!=false){
                a=Number(sessionStorage.getItem("total"));}
         a += component.find("txtNumber").get('v.value');  
            sessionStorage.setItem("total",a);
            component.find("txtNumber").set("v.value",'');
        }
    },
    TotalS : function(component,event,helper){
    if(sessionStorage.getItem("total")!=false){
    var e= sessionStorage.getItem("total");
    component.find("txtNumber").set("v.value",e);
}
    
}
})