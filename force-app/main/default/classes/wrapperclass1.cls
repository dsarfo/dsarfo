//wrapper class to wrap what case Object
public with sharing class wrapperclass1 {
   //Apex property of type Case sObject and Boolean type
    public Case cs{get;set;}
    public boolean chk {get;set;}
    //default constructor
    public   wrapperclass1(){
        
    }  
    //polymorphic constructor/ constructor overloading the default constructor
    //with 2 parameter list 
        public   wrapperclass1(case cs,boolean chk){
        //this key word refers to the member property that was declared in the class   
            this.cs=cs;
            this.chk=chk;
    }  

}