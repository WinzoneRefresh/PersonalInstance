public with sharing class OverrideSAVE {

ApexPages.StandardController con;

    public OverrideSAVE(ApexPages.StandardController controller) {
    con= controller;
    }

    public pagereference dosave(){
    con.save();
    pagereference ref=new pagereference('/apex/dsiplayrecordsusingcustomcontroller');
    ref.setredirect(true);
    return ref;
    }

}