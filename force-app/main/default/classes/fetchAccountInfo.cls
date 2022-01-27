public with sharing class fetchAccountInfo {
@AuraEnabled
    public static Account getAccountInfo(Id accountId){
        return[select Id,Name,Phone,Website,Industry,Type FROM Account WHERE Id=:accountId];
    }
@AuraEnabled
 public static list<Account> getAccounts(){
        return [select Id,Name,Phone,Website,Industry,Type FROM Account];
    }
}