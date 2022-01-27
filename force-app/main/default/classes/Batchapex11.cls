global class Batchapex11 implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id, FirstName,LastName FROM Contact';
        return Database.getQueryLocator(query);
    }
 
    global void execute(Database.BatchableContext BC, List<Contact> scope)
    {
         for(Contact a : scope)
         {
             a.LastName = a.LastName +'LastName is updated';          
         }
         update scope;
    }  
    global void finish(Database.BatchableContext BC)
    {
        system.debug('batch completed');
    }

}