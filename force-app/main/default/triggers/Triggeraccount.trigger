trigger Triggeraccount on Account (before insert,before update,before delete,after insert,after update) {
    //invoking the methods from the trigger class
    //AccountTriggerHandler
    //
    //if statement to check which of the methods to invoke per the trigger event
    //thus After trigger Event or before trigger event 
    if(trigger.isafter) {
        AccountTriggerHandler.handleAfterTriggers(trigger.new);
    }
    else{
        AccountTriggerHandler.handleBeforTriggers(trigger.new,trigger.oldmap,trigger.old);
    }

}