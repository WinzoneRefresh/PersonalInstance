trigger Contacttrigger on Contact (before insert) 
//Test
{
    for(Contact acc:Trigger.new)
        {
            if(acc.shipping_city__c=='Chennai')
                {
                    acc.shipping_country__C='India';
                }
        }
 }