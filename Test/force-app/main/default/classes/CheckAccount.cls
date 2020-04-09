@RestResource(urlMapping='/Showdetails/*')
global class CheckAccount
{

@HttpGet

        Global static List<Account> getAccount()
        {
        list<Account> lst;
        
            try
            {
                lst=[select Name,phone from Account];
                Return lst;
            }
            Catch (Exception ex)
            {
                System.debug('Error'+ex.getmessage());
            }
            Return lst;
            
        } 

        
         }