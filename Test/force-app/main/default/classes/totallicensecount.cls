global class totallicensecount implements Database.Batchable<SObject>, Database.stateful {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'select Id,name,profile.Userlicense.name,Profile.UserLicense.TotalLicenses,Total_license_count__c from user';
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext bc,list<User> scope){
        Map<string,Integer> licenseNameToLicenseCountMap = New Map<string,Integer>();
        
        for(UserLicense userLicense : [select Id,name,TotalLicenses from Userlicense]) {
            licenseNameToLicenseCountMap.put(userLicense.Name, userLicense.TotalLicenses);
        }
        
        List<User> usersToUpdate = new List<User>();
        
        for(User user : scope) {
            if(licenseNameToLicenseCountMap.containsKey(user.profile.Userlicense.name)) {
                user.Total_license_count__c = licenseNameToLicenseCountMap.get(user.profile.Userlicense.name);
                usersToUpdate.add(user);
            }
        }
        if(usersToUpdate.size() > 0) {
            update usersToUpdate;
        }
    }
    
    global void finish (Database.BatchableContext bc){}
}