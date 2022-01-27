public with Sharing class StudentMarksSave {
    public Marks_Student__c ma {get;set;}
    public Pagereference pg{get;set;}
    //constructor    
    public StudentMarksSave(){
           ma = new Marks_Student__c(); 
        }
    //method
    public pagereference saved(){
        try{
            insert ma;
            pg=new pagereference('/'+ma.Id);
            return pg;
        }   catch (Exception e){
            system.debug(e.getMessage());
        }
    return pg;
    }
    public void canceled(){
        system.debug('Empty fields');
    }
}