//this trigger asigns a value to a field automatically whenever a new case is created
//we want the trigger to fire before insertion
trigger CASEINSERT on Case (before insert) {
    //we check if its true that the trigger is a before trigger event
    if(trigger.isbefore)
    {
        //we also check that the action/event is an insert  
        if(trigger.isinsert){
           //using an enhance for loop to loop through the 
           //list thus trigger.new list to assign the text
           //string Record inserted by the "Userinfo.getLastName()"
           //will return the lastname of the user creating the case  
            for(Case c:trigger.new)
            {
                c.description='Record inserted by'+Userinfo.getLastName();
            }
           
        }
    }
    

}