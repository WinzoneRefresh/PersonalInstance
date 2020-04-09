public class AddContacts {
        public Account accounts;
        public Date StartDate {get;set;}
         public Date endDate{get;set;}
        public Contact del;
        public List < Contact > addContactList {get;set;}
        public List < Contact > delContactList {get;set;}
        public List < Contact > contactList {get;set;}
        public Integer totalCount {get;set;}
        public Integer rowIndex {get;set;}
        public List < Contact > delContacts {get;set;}
        
        public boolean blnNoResultFound{get;set;}
        public boolean showResult{get;set;}

        public AddContacts() {
        }
        
        public Void searchAccount(){
            if(startDate != NULL && endDate != NULL){
                contactList = [Select id, firstName, LastName from Contact where  createdDate >= : startDate AND createdDate <: endDate] ;
            } 
        }
        
        Public Void fetchcontactlist(){           
                contactList = [Select id, firstName, LastName from Contact where  createdDate >= : startDate AND createdDate <: endDate] ;
                totalCount = contactList.size();
         }       

        public void addRow() {
                addContactList = new List < Contact > ();
                contactList.add(new Contact(AccountId = accounts.Id));
        }

        public PageReference save() {
                Update contactList;               
                PageReference pageRef = new PageReference('/apex/addcontactpage');
                pageRef.getParameters().put('id',accounts.Id);
                return pageRef;
        }
        
}