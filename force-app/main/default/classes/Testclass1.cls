@istest
public class Testclass1 {
    testmethod static void testAc (){
      
        test.startTest();
       
        Account a=new Account();
        a.AccountNumber='2900';
        a.Name='Dominic';
        a.Industry='Education';
        a.AnnualRevenue=50000;
        insert a;

        try{
            Contact c=new Contact();
        c.accountid=a.id;
        c.LastName='James';
        insert c;

        Contact c1=new Contact();
        c1.accountid=a.id;
        c1.LastName='yaw';
        insert c1;
   		
        Contact c2=new Contact();
        c2.accountid=a.id;
        c2.LastName='sam';
        insert c2;
        } catch (Exception e){
           system.debug(e); 
        }
        
        
        
        
        test.stopTest();
    }
}