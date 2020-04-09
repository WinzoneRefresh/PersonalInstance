trigger pricediscount on Pricebook2 (before insert, before update) {

        For(Pricebook2  a:Trigger.new)
        {
        a.Price__c *=0.9;                                                                                 
        
        }
        }