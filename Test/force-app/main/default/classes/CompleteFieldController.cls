public with sharing class CompleteFieldController {
public SMS__C SMS {get;set;}
 Public List<String> allFieldName{get;set;}
    Public Set<String> showName{get;set;}
    Public SObject sobj{get;set;}
    public String currentRecordId {get;set;}
    
    Public CompleteFieldController(){
        
        currentRecordId=ApexPages.CurrentPage().getparameters().get('id');
                
    }  
    
    

}