public with sharing class updateHighestAmountOppNameQueuable implements Queueable {

    public List<Account> accList = new List<Account>();

    public updateHighestAmountOppNameQueuable(List<Account> accList) {
        this.accList = accList;
    }

    //Execute
    public void execute(QueueableContext qc){
        for(Account acc : accList){
            Decimal maxAmount = 0;
            String maxOppName = '';
            
            for(Opportunity opp : acc.Opportunities){
                if( opp.Amount != NULL && opp.Amount>maxAmount){
                    maxAmount = opp.Amount;
                    maxOppName = opp.Name;
                }
            }
            acc.Highest_Amount_Opportunity_Name__c = maxOppName;
        }
        system.debug('accList' +accList);
        update accList;
    }
}