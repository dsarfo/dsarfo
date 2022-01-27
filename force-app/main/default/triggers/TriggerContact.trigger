trigger TriggerContact on Contact (before insert,before update,before delete,after insert, after update) {

    
    if (trigger.isbefore)
    {
   // ContactTriggerHandler.tBefore(trigger.new);    
    }
    
   /* 
    if(trigger.isinsert && trigger.isbefore){
        AggregateResult[] g = [select accountid, count(id )from contact group by accountid having count(id)>3];
        for(Contact c:trigger.new){
            for(AggregateResult ar:g){
                if(ar.get('accountid')==c.accountid)
                {
                   c.adderror('You cannot add anymore Contact to this account');
                }
            }
        }
            
    } */
}