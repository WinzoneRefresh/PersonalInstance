trigger leadUpdate on lead (after insert) {
    for (lead ld : Trigger.new) {
    if (ld.Phone!=Null) {
            leadIntegrationupdate.leadupdate(ld.Id);
                 System.debug('ld.Id');
     }
    }

}