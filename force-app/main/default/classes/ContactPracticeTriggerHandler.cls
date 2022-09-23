public class ContactPracticeTriggerHandler {
    
     //Scenario 2a
    public static void errorValidation1(List<Contact> conList){
        for(Contact con : conList){
            if(con.LeadSource == 'Partner Referral'){
                con.addError('Cannot insert/update with Partner Referral');
            }
        }
        
    }
    
    //Scenario 2b
    public static void errorValidation2(List<Contact> conList, Map<ID,Contact> conOldMap){
        //LeadSource - Web
        //LeadSource - Phone Inquiry
        for(Contact con : conList){
            //Map<Key,Value>, to retrieve the values, get(Key)
            //conOldMap.get(con.id) => Contact record
            if(con.LeadSource != conOldMap.get(con.id).LeadSource){
                con.addError('Cannot update LeadSource');
            }
        }
    }
    
    
}