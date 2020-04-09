public class SendSMS {
/*
    private static final String VERSION = '3.2.0';
    private String endpoint = 'https://api.twilio.com';
    public static final String DEFAULT_VERSION = '2010-04-01';
    public Opportunity cmd {get;set;}
    private String accountSid;
    private String authToken;
    public String phoneNumber;
    public SMS__c smsRec {get;set;}
    public SendSMS(ApexPages.Standardcontroller controller){
        smsRec = new SMS__c();
        cmd= [Select 
              ACCOUNT_SID__c  ,AUTH_TOKEN__c  , From_Number__c 
              from Twillo_Configuration__mdt  where DeveloperName='Twillo_Configuration'];
        smsRec.From_Number__c =cmd.From_Number__c;
        
        
    }
    
    public PageReference sendSMS(){
        accountSid = cmd.ACCOUNT_SID__c;
        authToken = cmd.AUTH_TOKEN__c;
        phoneNumber = cmd.From_Number__c;    
        String responseBody = '';
        String path = endpoint + '/' + DEFAULT_VERSION + '/Accounts/' + this.accountSid + '/SMS/Messages.json';
        URL uri = new URL(path);
        String reqBody = '';
        if(smsRec.To_Number__c != Null && smsRec.Message__c != '') {
            reqBody += (reqBody=='' ? '' : '&')+ 'To' + '=' + EncodingUtil.urlEncode(string.valueOf(smsRec.To_Number__c), 'UTF-8');
            reqBody += (reqBody=='' ? '' : '&')+ 'Body' + '=' + EncodingUtil.urlEncode(smsRec.Message__c, 'UTF-8');
            reqBody += (reqBody=='' ? '' : '&')+ 'From' + '=' + EncodingUtil.urlEncode(smsRec.From_Number__c, 'UTF-8');
        } else {
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Mobile Number and Text Message are required.');       
            ApexPages.addMessage(myMsg); 
        }
        Http h = new Http();
        HttpRequest request = new HttpRequest();
        
        request.setHeader('X-Twilio-Client', 'salesforce-' + VERSION);
        request.setHeader('User-Agent', 'twilio-salesforce/' + VERSION);
        request.setHeader('Accept', 'application/json');
        request.setHeader('Accept-Charset', 'utf-8');
        request.setHeader('Authorization', 'Basic '+EncodingUtil.base64Encode(Blob.valueOf(this.accountSid + ':' + this.authToken)));
        request.setEndpoint(uri.toExternalForm());
        request.setMethod('POST');
        request.setBody(reqBody);
        HttpResponse res = h.send(request);
        
        responseBody = res.getBody();
        System.debug('responseBody:::::::::::' +responseBody);     
        
        insert smsRec ;
        
        
        return null ;
    }
    */
}