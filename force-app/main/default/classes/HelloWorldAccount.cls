public class HelloWorldAccount {
@AuraEnabled
    public static Account getAccountInfo(Id accountId){
        return[select Id,Name,Industry,Website,Type,phone from Account where Id =:accountId];
    }
}