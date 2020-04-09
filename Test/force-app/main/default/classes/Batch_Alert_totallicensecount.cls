public class Batch_Alert_totallicensecount {
@InvocableMethod (label='Update User' )

      public static void execute(){
     If(!system.isBatch()){    
        totallicensecount TC= New totallicensecount();
        ID IDbatch= database.executeBatch(tc);     
   }
        }
        
}