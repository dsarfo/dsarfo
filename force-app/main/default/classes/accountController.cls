public with sharing class  accountController {
    public Account acc {get;set;}
    public Pagereference pg{get;set;}
    public list<Account> MYa {get; set;}
    public boolean cb{get;set;}
    //constructor to initialize the Account sObject
    public accountController(){
        acc= new Account();
        cb=false;
    }
    public void togglelist(){
    cb= !cb;
    }
    
    public void showList(){
        MYa = new list<Account>();
      MYa= [select id,name,annualrevenue,rating,industry from account];  
    }
  public void Save1(){
  
  try{
            insert acc;
           showlist();
        } catch(Exception e){
            system.debug(e.getMessage());
        }
  }
  
  /*  public Pagereference Save1()
    {
        
        try{
            insert acc;
            pg =new pagereference('/'+acc.id);
            pg.setredirect(true);
            return pg;
        } catch(Exception e){
            system.debug(e.getMessage());
        }
    return pg;
    } */
    public void Cancel1(){
        
    }
}