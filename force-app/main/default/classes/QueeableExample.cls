    public with sharing class QueeableExample implements Queueable{
        
        public Contact contPass;
        
        public QueeableExample(Contact cont){
            contPass = cont;
        }
        
        public void execute(QueueableContext param1) {
            contPass.FirstName = 'Jeffery';
            contPass.lastName = 'Boakye';
    
            update contPass;

        }
    }
