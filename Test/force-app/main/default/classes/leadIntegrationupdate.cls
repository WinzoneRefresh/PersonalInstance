global class leadIntegrationupdate{
  @future (callout=true)
   public static void leadupdate(id ldid) {
     //Construct HTTP request and response
     //Http request method,Endpoint and setBody
     HttpRequest req = new HttpRequest();
     req.setHeader('Content-Type','application/json');
     String endpoint = 'Endpoint URL FOR External service';
     req.setMethod('POST');
     req.setEndpoint(endpoint); 
     system.debug('LD ID' +ldid);
     //SOQL to construct JSON string in set body
     Lead led=[select id,Name from Lead where id=:ldid];
     system.debug('serialized JSON'+JSON.serialize(led));
     String JsonString=JSON.serialize(led);
     system.debug(JsonString);
     //Http response method 
     Http http = new Http();
     HTTPResponse res = http.send(req);
     System.debug(res.getBody());

   }
 }