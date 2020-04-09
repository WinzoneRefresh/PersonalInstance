@RestResource(UrlMapping='/InsertAccount/*')
global class ExternalAccount
{
/***@HttpGet

        global static Account doGet()
        {
            RestRequest req=RestContext.Request;
            RestResponse res=RestContext.Response;
            String accountID=req.requestURl.substring(req.requestURl.lastIndexof('/')+1);
            System.debug('Account ID:'+AccountID);
            Account result=[select ID, name, site from Account where ID=:accountID];
            Return result;
        } **/
        
        
 @HttpPost
 
     global static String dopost(String Name, string Phone, String AccountNumber)
     
     {
         Account acct=new Account();
         acct.name=Name;
         acct.phone=Phone;
         acct.AccountNumber=AccountNumber;
         
         insert acct;
         Return acct.ID;
      }
}