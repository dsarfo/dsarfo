public with sharing class CASEEXTENSION {
    public case cs{get; set;}
    public ApexPages.StandardSetController aps;
    public  string x {get;set;}
    
    public CASEEXTENSION(Apexpages.StandardsetController std){
      this.aps=std;    
     this.cs=  (case) std.getRecord();
     x='From the Extension controller';
    }
}