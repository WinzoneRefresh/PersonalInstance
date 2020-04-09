public class AccountInsert
{

  
    Account acct;
    PUblic Account getAccountInsert()
        {
            If (acct==null)acct=new Account();
             Return acct;
        }
        
public PageReference save() {

Insert acct;
PageReference acctpage=new ApexPages.StandardController(acct).view();
acctpage.setRedirect(true);
Return acctpage;
}
}