public with sharing class MailDeliveryStatus {
    public Mails__c pmil { get; set; }
    public list<Mails__c> pastdel {get;set;}
    
    public MailDeliveryStatus()
    {
        pmil= new Mails__c();
     // pastdel=[select id,name,Delivery__c,fragile__c,Height__c,Inhabitants__c,insured__c,insured_amount__c,routes__c,weight__c,width__c from  mails__c where delivery__c ='Delivered'];
    }
    
    public void on1(){
        pastdel = new list<mails__c>();
       pastdel=[select id,name,Delivery__c,fragile__c,Height__c,Inhabitants__c,insured__c,insured_amount__c,routes__c,weight__c,width__c from  mails__c where delivery__c ='Delivered'];
     
    }
 public void save(){
        
   try{
    insert pmil;
    
    } catch (exception e){
    system.debug(e.getmessage());}
 }
 public void cancel(){
 }
}