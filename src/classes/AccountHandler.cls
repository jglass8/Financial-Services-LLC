public class AccountHandler {
    Public static Account insertNewAccount(string AccountName){
        
        Account acct = new Account(Name=AccountName);
        
        try {
            insert acct;
        } catch (DmlException e){
            return null;
        }
        return acct;
    }

}