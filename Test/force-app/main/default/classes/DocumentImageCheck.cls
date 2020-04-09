public class DocumentImageCheck{
 public String parameterValue {get;set;}
 public String imageURL{get;set;}
 Public  ID recordIdOrPrefix {get;set;}
 String objectName = '';
 string Body;
 Id recordId;
  ID docID {get;set;}
Public string MyObjectNamae;
   
 public DocumentImageCheck(ApexPages.StandardController controller) {

 String myIdPrefix ;
      recordIdOrPrefix= ApexPages.currentPage().getParameters().get('id');  
      recordId = controller.getId();
           String PageURL = ApexPages.currentPage().getUrl();    
            String [] cuts = PageURL.split('[&]');
  
           System.debug('RecorID......'+recordId);
            IF(cuts[2].contains('section')){
           MyObjectNamae=  cuts[2].Right(cuts[2].length()-8); 
              System.debug('MyURl'+ MyObjectNamae); 
             }
            
        
       imageURL = '/servlet/servlet.FileDownload?file=';
       List<document> documentList = [select name ,body from document where Name =:MyObjectNamae limit 1];
      
        if(documentList != null && documentList.size() > 0)
        {
            docID=documentList[0].id;
            imageURL = imageURL + documentList[0].id;
            Body=documentList[0].Body.toString();
            
        }
   System.debug(LoggingLevel.INFO + imageURL);
    } 
    
    
    
   
}