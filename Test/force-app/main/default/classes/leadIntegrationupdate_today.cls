global class leadIntegrationupdate_today{
    @future (callout=true)
    public static void leadupdate(id ldid) {
        String clientId = '3MVG9pe2TCoA1Pf6Ev5_q_4.gf1m6CLjsfNS67ndECbRTMLmBZVju8tFwR5siwwidnCXwBjvQG8IfW5shAX0S';
        String clientSecret = '826320CC17278FCD486D6BA9D016722641D34AEEBBC9C1F882D34462BF8032DC';
        String username='shakila3193@gmail.com.prod';
        String password='Sfdc@2020oqGAYL78uooM6cbtyrpKQSDN1';     
        HttpRequest req = new HttpRequest();
        req.setHeader('Content-Type','application/x-www-form-urlencoded');    
        req.setMethod('POST');
        req.setEndpoint('https://login.salesforce.com/services/oauth2/token');
        String requestBody = 'grant_type=' + EncodingUtil.urlEncode('password','UTF-8')+'&client_id='
            + EncodingUtil.urlEncode(clientId,'UTF-8') + '&client_secret=' + EncodingUtil.urlEncode(clientSecret,'UTF-8')+'&username='
            + EncodingUtil.urlEncode(username,'UTF-8') + '&password='+ EncodingUtil.urlEncode(password,'UTF-8');
        System.debug('requestBody => ' + requestBody);  
        //SOQL to construct JSON string in set body
        Lead led=[select id,Name from Lead where id=:ldid];
        system.debug('serialized JSON'+JSON.serialize(led));
        String JsonString=JSON.serialize(led);
        system.debug(JsonString);
        req.setBody(requestBody);
        //Http response method 
        Http http = new Http();
        HTTPResponse res = http.send(req);
        System.debug(res.getBody());
        
    }
}