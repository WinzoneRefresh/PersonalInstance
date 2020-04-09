public class HttpCalloutSample {
  @AuraEnabled
  public static String getCalloutResponseContents1(String phoneNumber) {
     Http h = new Http();
     String instBody = 'Url=http://demo.twilio.com/docs/classic.mp3&To='+phoneNumber+'&From=+12672140815';
    String inEndPoint = 'https://api.twilio.com/2010-04-01/Accounts/ACfae022703791c240df9da8a2c1d21ab8/Calls.json';
    String uname = 'ACfae022703791c240df9da8a2c1d21ab8';
    String pswd = 'e941a85679ec5d0d27a44eede6c6f6c0';
    String new1 = uname+':'+pswd;
    Blob mediate = Blob.valueOf(new1);
    String credential = 'BASIC ' +EncodingUtil.base64Encode(mediate);
    System.debug('Credential-->'+credential);
    HttpRequest req = new HttpRequest();
    req.setEndpoint(inEndPoint);
    req.setHeader('Content-Type', 'application/x-www-form-urlencoded');
    req.setMethod('POST');
    req.setBody(instBody);
    req.setHeader('Authorization', credential);
    // Send the request, and return a response
    HttpResponse res = h.send(req);
    System.debug('Response-->'+res.getBody());
    return res.getBody();
  }
}