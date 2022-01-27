global with sharing class SoapContactClass {
  webservice  static string contactinsert(string lastname,string ls)
    {
         try{
Contact con = new Contact(lastName=lastname,leadsource =ls);
insert con;
return con.id;            
        }catch (Exception e)
        {
            return e.getMessage();
        }
    }

}