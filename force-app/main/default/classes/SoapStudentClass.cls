global with sharing class SoapStudentClass {
 webservice  static string Student1(string lastname,integer ls)
    {
         try{
Student1__c con = new Student1__c(Name=lastname,Age__c =ls);
insert con;
return con.id;            
        }catch (Exception e)
        {
            return e.getMessage();
        }
    }
}