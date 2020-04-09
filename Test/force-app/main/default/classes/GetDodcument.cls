public class GetDodcument{

    public String isComplete { get; set; }

    public String documentid { get; set; }

    public GetDodcument() {

    }

public string documentid(ApexPages.StandardController stdController) {
        String type = stdController.getRecord().getSObjectType().getDescribe().getName();
        string documentid;
        Document d = [Select Id From Document where Name =: type];
        documentid = 'https://c.ap5.content.force.com/servlet/servlet.FileDownload?file='+d.Id;
        system.debug('documentid :'+documentid);
  Return documentid;
    }
   
}