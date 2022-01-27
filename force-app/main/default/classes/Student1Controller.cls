public with sharing class Student1Controller {
//properties to work with (thus student1 
//which is the Apex sObject)
  public Student1__c st {get;set;}
    public string si{get;set;}
    public List <Student1__c> stList{get;set;}
    //declare pagereference variable to direct the 
    //page after a form load action (a buttom click event)
    public Pagereference pg{get;set;}
    //constructor   to initialize the sObject 
    public Student1Controller(){
           st = new Student1__c(); 
        stlist=new list<Student1__c>();
        si='';
        }
    //method to save our data from the form(record)
    public Void saved(){
        //try catch block to manage our errors 
        try{
            //insertion statement 
            insert st;
            si=st.id;
            canceled();
            //assigning a value to our pagereference 
            //object (pg)
            //pg=new pagereference('/'+st.Id);
            //return the page reference object
           // return pg;
        }   catch (Exception e){
            system.debug(e.getMessage());
        }
    
      //  return pg;
    }
    
    @auraenabled
    public static void insertStudent(string Sname,integer age,integer year,string sex){
       Student1__c stud = new Student1__c();
        try{
            stud.Name=Sname;
            stud.Age__c=age;
            stud.Year__c=year;
            stud.Sex__c=sex;
            insert stud;
        }
        catch(Exception e){
            system.debug('Check this Error message'+e.getMessage());
        }
    }
      
    @auraenabled
    public static list<student1__c> studentlist(){
        return [select id,name,Age__c from student1__c];
    }
    
    public void canceled(){
        try{
            stlist=[select id,name,Age__c,Year__c,Sex__c,Description__c from Student1__c];
        }catch (Exception e){
            system.debug('Error in see '+e.getMessage());
        }
    }
    public void RefreshSt(){
        try{
            
        }catch (exception e){
            
        }
    }
}