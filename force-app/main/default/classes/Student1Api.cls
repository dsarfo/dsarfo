@RestResource(urlMapping='/students1__c/*')
global with sharing class Student1Api {
    @httpPost
    global static String createStudent(String Name,double Age,integer Year,string Description){
        Student1__c st = new Student1__c();
        st.Name=name;
        st.Age__c=age;
        st.Year__c=year;
        st.Description__c=Description;
        insert st;
        return st.Id;
    }

}