public with sharing class caselist {
    //property declaration of type list
    public list <case> cslist{get;set;}
    //property declaration of type StandadSetController
    public Apexpages.StandardSetController stdc{get;set;}
    //property declaration of return type list
    public list<wrapperclass1> cslist1{get;set;}
 //property declaration of return type a constructor
    public wrapperclass1 wc1 {get;set;}
    
     @auraenabled
    public static list<case> caselistchanged(string keypress){
        string kp='%d'+keypress+'%';
        return [select id,casenumber from case where casenumber like :kp];
    }
     @auraenabled 
    public static List<case> caselist1(){
        
        return [select id,casenumber from case];
    }
    

//    @auraenabled
  //  public static list<case> caselist1(){
        
      //  return [select id,casenumber from case];
  //  }
   //constructor
    public caselist(){
        //instantia new list of type sObject
        cslist= new list<case>();
        //querying into the list from the sObject type
        cslist=[SELECT ID,CASENUMBER,DESCRIPTION FROM CASE];
        //instantiate new list of type {wrapper class that was created by cloning the case}
        cslist1 = new list<wrapperclass1>();
        //
        for(case c:cslist)
        {
            wc1 = new wrapperclass1();
            wc1.cs =c;
            wc1.chk =false;
            cslist1.add(wc1);
        }
        /*
       stdc= new Apexpages.StandardSetController(database.getQueryLocator('select id,casenumber,description from case'));
       stdc.setPagesize(3);
        cslist = stdc.getrecords();
        */
    }
    public void next(){
        stdc = new Apexpages.StandardSetController(database.getQueryLocator('Select id,casenumber,description from case'));
        stdc.setPagesize(3);
        cslist = stdc.getrecords();
    }

}