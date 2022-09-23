public class DemoForLoops {
	   /*for (initialization; Boolean_exit_condition; increment) statement*/
    public void demoForInitialization(){        
        for(Integer i=0 ; i<10 ; i++){
            Integer count = i+1;
            system.debug('Count : '+count);
        }        
    }
    
    /*Print Odd Numbers in the Range*/
    public void printOddNumbers(Integer startInt,Integer endInt){
        Integer i=0;        
        for(i=startInt; i<=endInt; i++){
            Integer modValue = math.mod(i, 2);   
            //Implies it is odd number         
            if(modValue == 1) {
            system.debug('Print Odd Number: '+i);
        }
        }
    }
    
    /*Iterate List*/
    public void iterateList(){
        List<String> namesList = new List<String>();
        namesList.add('Amy');
        namesList.add('Seda');
        namesList.add('Abreha');
        namesList.add('April');
        for(String eachValue : namesList){
            system.debug('Print Each Name: '+eachValue);
        }
        
    }
    
    /*Iterate Set*/
    public void iterateSet(){
        set<String> fruitNames = new set<String>();
        fruitNames.add('apple');
        fruitNames.add('orange');
        fruitNames.add('kiwi');
        fruitNames.add('grape');
        fruitNames.add('grape');
        Integer i=1;
        set<string> newNamesSet = new set<String>();
        for(String names : fruitNames){
            String newName = i++ + '. ' +names.capitalize();
            newNamesSet.add(newName);           
        }
        system.debug('Display New Fruit Set: '+newNamesSet);
    }
    
    /*Iterate Map*/
    public void iterateMap(){
        Map<Integer,String> employeeMap = new  Map<Integer,String>();
        employeeMap.put(001,'Madhu');
        employeeMap.put(002,'Sri');
        employeeMap.put(003,'Huseyin');
        employeeMap.put(004,'Sara');
        employeeMap.put(005,'Ben');        
        set<Integer> empNum = employeeMap.KeySet();        
        //Iterate with the Key and get the values in map
        for(Integer empNumKey : empNum){
            String empName = employeeMap.get(empNumKey);
            system.debug('Key is '+empNumKey+' and value is '+empName);
        }        
    }
    
}