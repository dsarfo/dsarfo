public with sharing class contactIn {
   @auraEnabled
    public static string conli(string lname){
        try{ Contact c= new Contact();
        c.LastName=lname;
        insert c;
            return c.id;
           }catch (Exception e){
                return e.getMessage();
            }
    }
   @AuraEnabled
    public static List<String> getPicklistvalues(String objectName, String field_apiname){
        List<String> optionlist = new List<String>();
        
        Map<String,Schema.SObjectType> gd = Schema.getGlobalDescribe(); 
        Map<String, Schema.SObjectField> field_map = gd.get(objectName.toLowerCase()).getDescribe().fields.getMap(); 
        
         List<Schema.PicklistEntry> pick_list_values = field_map.get(field_apiname).getDescribe().getPickListValues();
        
        for (Schema.PicklistEntry a : pick_list_values) 
        {
            optionlist.add(a.getValue());
        }
        return optionlist;
    }
    @auraEnabled
    public static Contact fetchdata(Id idd){
        try{ Contact con= new Contact();
        con=[select id,LastName from contact where id=:idd];
            return con;
           }catch (Exception e){
                return new Contact();
            }
    }
     @auraEnabled
    public static string contactupdate(id idd,string lname){
        try{ 
            Contact con= new Contact();
        con=[select id,LastName from contact where id=:idd];
            con.LastName=lname;
            update con;
            return con.Id;
           }catch (Exception e){
                return e.getMessage();
            }
    }
}