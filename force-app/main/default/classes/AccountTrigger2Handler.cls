public class AccountTrigger2Handler {
    
    public static void updateCasePriority(List<Account> accTriNew, Map<id,Account> triOldMap){
    //    List<Account> accTriNew = new List<Account>();
        Set<id> accId = new  Set<id>();
        for(Account acc : accTriNew) {
            if(acc.Rating != triOldMap.get(acc.id).Rating){
                accId.add(acc.id);
            }
        }
        List<Case> caseList = [Select Account.Rating, Priority From Case Where AccountId IN : accId];
        
        for(Case cs : caseList){
            if(cs.Account.Rating == 'Hot'){
                cs.Priority = 'High';
            }
            else if (cs.Account.Rating == 'Warm') {
                 cs.Priority = 'Medium';
            }
            else if (cs.Account.Rating == 'Cold') {
                 cs.Priority = 'Low';
            }
        }
        update caseList;
    }
}