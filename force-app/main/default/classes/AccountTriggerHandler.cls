public with sharing class AccountTriggerHandler {
    
//
//Before triggers method
//
  
    public static void handleBeforTriggers(list<Account> triggernew,Map<id,Account> oldmap,list<Account> triggerold){
    
        //BEFORE TRIGGERS PRE PROCESSES
    if(trigger.isbefore){
        
        
        //this is an insert trigger (before an action)
        if (trigger.isinsert){
            for(Account ac:triggernew){
                if(ac.Industry=='Chemicals')
                {
                    ac.adderror('Chemicals is not a good option for Account: select Banking');
                }
                system.debug('Values from account in insert mode trigger.new:'+ac);
                if(ac.Rating=='Hot'&& ac.AnnualRevenue<99999)
                {
                    ac.adderror('Account with Hot rating  Cannot be less than 99999');
                }
            }
            /*  for(Account ac:trigger.old){
system.debug('Values from account in insert mode trigger.old:'+ac);
}
*/
        }
        
        //this is the update trigger (before an action)
        
        if (trigger.isupdate){
            
            
            for(Account ac:triggernew){
                if(ac.Active__c=='Yes'&& ac.Description.contains('need to'))
                {
                    ac.adderror('You cannot change your status again');
                }
                
                if(ac.Rating=='Hot'&& ac.AnnualRevenue<99999)
                {
                    ac.adderror('Account with Hot rating  Cannot be less than 99999');
                }
                
                if (ac.Industry=='Chemicals')
                {
                    ac.adderror('Chemicals is not a good option for Account: select Banking');
                }
                if((ac.industry=='Education' && oldmap.get(ac.id).industry=='Construction')||(ac.industry=='Construction' && oldmap.get(ac.id).industry=='Education')){
                    ac.adderror('You cannot change from Education to Construction');
                }
                //system.debug('Values from account in insert mode trigger.new:'+ac);
            }
            for(Account ac:triggerold){
                system.debug('Values from account in insert mode trigger.old:'+ac);
            }
        }
        
        if(trigger.isdelete){
            for(Account ac:triggerold){
                if(ac.name=='Revature'){
                    ac.adderror('Revature cannot be deleted');
                }
            }
        }
        
    }
    
    
    }
    
    
   //
   // after triggers Method
   // 

    public static void handleAfterTriggers(list<Account> triggernew){
            //AFTER TRIGER POST PROCESSES
    if (trigger.isafter){
        //close related cases for Account status no
        if (trigger.isupdate){
            list <Case> cr = [select accountid,id,status from case];
            List<Account> ar=[select id,active__c from Account];
            
            for(Account a:triggernew){
                if(a.active__c =='No') {
                    for(Case c:cr){
                        if (a.id==c.accountid)
                        {
                            c.status='Closed';
                        
                        }
                    } 
                }
            } update cr;
        }
        //Post insert statement
        if(trigger.isinsert)
        {
            Contact cont;
            list<Contact> c= new list<Contact>();
            for(Account ac:triggernew){
                cont= new Contact(Accountid=ac.id,Lastname=ac.Name+' Trg');
                c.add(cont);
            } insert c;
        }
        
    }
    }
}