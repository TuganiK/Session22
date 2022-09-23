public class DemoPrimitiveDataTypes {
    
    public void displayValues(){
        
        String favCharacter = 'Rachel';
        Integer Season = 10;
        Boolean isHeCute = True;
         
        
        system.debug('My favorite Character' + favCharacter);
        system.debug('How many seasons in Friends?'+Season);
        system.debug('Is Joey Cute?'+isHeCute+' Yes he is');

        Long myLongNum = 12345L;
        Double myDoubleNum = 10.99;
        
        system.debug('Print my long number ' +myLongNum);
        system.debug('Print my double number ' +myDoubleNum);

        Date myDate = System.today();
        ID mySalesforceID = '0018b000020VMcuAAG';
        Object myObj = 5512;

        System.debug('Print my date '+myDate);
        System.debug('Print my ID '+mySalesforceID);
        System.debug('Print my obj '+myObj);

        String firstName = 'Tuncay';
        String lastName = 'Kurt';
        String fullName = firstName+lastName;
        System.debug('FullName '+fullName);

        
          }
}