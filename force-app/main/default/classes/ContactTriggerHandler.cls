public with sharing class ContactTriggerHandler {

    public static void tBefore( list<contact> h){
         if(trigger.isinsert && trigger.isbefore){
      AggregateResult [] g = [select accountid, count(id )from contact group by accountid having count(id)>3];
        for(Contact c:h){
            for(AggregateResult ar:g){
                if(ar.get('accountid')==c.accountid)
                {
                   c.adderror('You cannot add anymore Contact to this account');
                }
            }
        }
            

    }
    }
}