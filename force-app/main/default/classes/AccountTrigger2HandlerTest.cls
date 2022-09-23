@isTest
public class AccountTrigger2HandlerTest {
    
	@isTest
    public static void updateCasePriorityTest(){
        Account accT = new Account();
        accT.Name = 'TestAssigment2';
        accT.Rating = 'Hot';
        accT.Rating = 'Warm';
        accT.Rating = 'Cold';
        insert accT;
        Case cs = new Case();
        cs.AccountId = accT.Id;
        cs.Origin = 'Web';
        cs.Status = 'New';
        cs.Priority = 'High';
        cs.Priority = 'Medium';
        cs.Priority = 'Low';
        insert cs;
    
    List<Account> accList = [Select Rating From Account ];
    for(Account acc: accList){
        acc.Rating = 'Warm';
        acc.Rating = 'Warm';
        acc.Rating = 'Warm';
        
    }
    update accList;
        List<Case> caseList =[Select Priority, AccountId from Case Where AccountId IN : accList ];
 	system.assertEquals('Medium', caseList.get(0).Priority);
   }
}