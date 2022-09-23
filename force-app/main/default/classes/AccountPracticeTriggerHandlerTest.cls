@isTest
public class AccountPracticeTriggerHandlerTest {
// Trigger / Trigger Handler => Find the logic that will fire trigger (DML)
    
    @testSetup
    public static void testDataSetup(){
        List<Account> accList = new List<Account>();
        for(Integer i = 0; i < 300; i++){
            Account acc = new Account();
            acc.Name = 'Acctest'+i;
            acc.Active__c = 'No';
            acc.Description = 'Inactive';
            accList.add(acc);
        }
        insert accList;
    }
    
    @isTest
    public static void testMethodUpdate(){
        List<Account> accList = [Select Name,Active__c,Description from Account];
        for(Account acc : accList){
            acc.Active__c = 'Yes';
        }
        //fire the trigger
        update accList;
        //Validate 
        //Test Starttest - Test Stoptest (Reset Governor Limit)
        test.startTest();
            List<Account> accListUpdate = [Select Active__c,Description from Account];
            system.assertEquals('Account is Active', accListUpdate.get(100).Description);
            
        test.stopTest();
        
    }
    
}