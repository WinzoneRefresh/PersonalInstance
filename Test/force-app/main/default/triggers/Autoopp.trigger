trigger Autoopp on Account (After Insert)
 {
        List<Opportunity> opplist=new list<Opportunity>();
        
        for(Account acc:Trigger.new)
        {
            Opportunity opp=new Opportunity ();
            opp.Name=acc.Name+'Opportunity';
            opp.StageName='Prospecting';
            opp.CloseDate=date.today();
          
            opplist.add(opp);
         }
        Insert(opplist);       
            
            


}