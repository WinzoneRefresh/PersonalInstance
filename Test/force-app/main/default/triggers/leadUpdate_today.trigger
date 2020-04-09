trigger leadUpdate_today on lead (after insert) {
        for (lead ld : Trigger.new) {
        if (ld.ID!=Null) {
        leadIntegrationupdate_today.leadupdate(ld.Id);
         System.debug('ld.Id');
     }
   }
 }