public with sharing class exceptionHandlingDemo {
    
    // public static void exceptionHandlingDemoMethod(){
    //     Account acc = new Account();
    //     insert acc;
    //     system.debug('Come Here');
    // }

    public static void dataBaseMethodsDemo(){
        List<Account> accList = new List<Account>();
        Account acc1 = new Account();
        acc1.Name = 'FirstAccount';
        accList.add(acc1);
        Account acc2 = new Account();
        accList.add(acc2);
        // Database Insert - allorNothing
        List<Database.SaveResult> resultAcc = Database.insert(accList,false);
        for(Database.SaveResult result : resultAcc) {
            if (result.isSuccess()) {
                // Logic - create contact/opp
                System.debug('I am succesful');
            } else {
                System.debug('Sory I Failed ' + result.getErrors());
            }
        }

    }
}