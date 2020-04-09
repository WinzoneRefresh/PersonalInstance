public class accountSearcher{

public static Date startDate{get;set;}
public static Date endDate{get;set;}
public static  List<Account> accList {get;set;}
public static List<WrapperClass> wrapperlist{get;set;}
public boolean showResult{get;set;}
public boolean blnNoResultFound{get;set;}
public    Boolean Iflag {get;set;}

public accountSearcher(){
    showResult = false;
    blnNoResultFound = false;
  
}

public Void searchAccount(){
    if(startDate != NULL && endDate != NULL){
        accList = [SELECT Id,Name,Site FROM Account WHERE createdDate >= : startDate AND createdDate <: endDate];
       System.debug(JSON.serializePretty(accList));
    } 
    if(accList.size() > 0){
         showResult = true;
         blnNoResultFound = false;
    }
   else{
         blnNoResultFound = true;
         showResult = false;
    }
   
         
 }
      
    public PageReference save() {    
                
       if(acclist.size()>0 && accList!=Null && startDate != NULL && endDate != NULL){
       Update acclist;
       Iflag=True;
       }
       If(Iflag==True){
       ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Info,'Saved succesfully ')); 
                 PageReference exRM = new PageReference('/apex/Account_Search');               
                exRM.setRedirect(true);
                return exRM ;
       }
       return null;
        
    }  
      
      
      
      
      
      /*public PageReference Save(){
      
         accList = [SELECT Id,Name,Site FROM Account WHERE createdDate >= : startDate AND createdDate <: endDate];      
        If(acclist.size()>0 && acclist!=Null ){
            for(Account irows:acclist) {
            WrapperClass wrp= NEw WrapperClass();
            wrp.website=irows.Site;
            wrapperlist.add(wrp);
            
              
            }
            Update wrapperlist;
        }
        
    }
    */
    
    
    
    
    
    
    public class WrapperClass{
     public Account a {get;set;}

     public WrapperClass(Account acc){

        a = acc;

     }

  }
    
    
    
    
    
      
      
   }