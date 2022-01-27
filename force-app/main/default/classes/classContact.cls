@RestResource(urlMapping ='/accountservices/*')
global with sharing class classContact {
 @httpPost   
global static string contactInsert(string lname,string ln){
        try{
Contact con = new Contact(lastName=lname,leadsource =ln);
insert con;
return con.id;            
        }catch (Exception e)
        {
            return e.getMessage();
        }
    }
    
    
   @httpGet
    global static Account getAccounts (){
        RestRequest req = RestContext.request;
       String var1= req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account acc = new Account();
		acc=[Select id,name,rating from account where id =:var1];
        return acc;
    }
    
    
}