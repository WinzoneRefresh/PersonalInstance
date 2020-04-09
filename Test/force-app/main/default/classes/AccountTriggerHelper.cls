public class AccountTriggerHelper
{
    public static void setdefaultvalue(list<account> newaccount)
    {
        for(Account acc:newaccount)
        {
        if(acc.Shippingcity=='Chennai')
                {
                    acc.Shippingcountry='India';
                }
            }
    }
    
    public static void insertcontactfornewaccount(list<account> newaccount)
    {
        list<contact> insertcontact=new list<contact>();
         for(Account acc:newaccount)
            {
                contact con=new contact();
                con.lastname='InsertContact';
                con.Accountid=acc.id;
                insertcontact.add(con);
            }
                insert insertcontact;
    }
}