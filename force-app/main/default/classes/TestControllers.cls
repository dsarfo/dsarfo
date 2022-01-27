@isTest
public class TestControllers {

  @istest  static void StController(){
    test.startTest();
      Student1__c st = new Student1__c();  
        st.Name='Sammy Gender';
       st.Age__c=45;
       st.Year__c=2019;
       st.Description__c='He is a great kid and i really appreciate his effort';
       insert st;
      test.stopTest(); 
    }
}