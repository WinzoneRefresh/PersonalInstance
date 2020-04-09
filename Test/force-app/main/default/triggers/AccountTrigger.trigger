trigger AccountTrigger on Account (before insert,after insert) {

    if(trigger.isbefore)
    {
        if(trigger.isinsert)
        {
            AccountTriggerHelper.setdefaultvalue(trigger.new); 
         }
         if(trigger.isupdate)
         {
            //before update logic;
         }
    }
    
    if(trigger.isafter)
    {
        if(trigger.isinsert)
        {
           AccountTriggerHelper.insertcontactfornewaccount(trigger.new);
        }
        if(trigger.isupdate)
        {
            //before update logic;
        }
    }
    
   
}