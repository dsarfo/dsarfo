public with sharing class SynchronousApex {
    public SynchronousApex() {

    }

    public void syncMethod(){
        list <Contact> contList =[SELECT ID,FirstName,LastName,Email FROM Contact LIMIT 1];
        contList[0].Email = 'jeffboakye@goatmail.com';
        QueeableExample queueEg = new QueeableExample(contList[0]);
        System.enqueueJob(queueEg); 
    }
}
