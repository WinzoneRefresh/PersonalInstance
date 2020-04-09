public with sharing class displayrecords {

public String rId{get;set;}

List<case> delcaserecords= new List<case>();
    public PageReference doDelete() {
    delcaserecords=[select Id from case where id =:rId];
    delete delcaserecords;
        pagereference ref=new pagereference('/apex/dsiplayrecordsusingcustomcontroller');
        ref.setredirect(true);
        return ref;
    }


List<account> accountrecords= new List<account>();
    public List<account> getAccountrecords() {
    accountrecords =[select id,name from account];
        return accountrecords;
    }


List<case> caserecords= new List<case>();
    public List<case> getRecords() {
    
        caserecords =[select id,casenumber,priority,origin,subject from case limit 2];
        return caserecords;
    }

}