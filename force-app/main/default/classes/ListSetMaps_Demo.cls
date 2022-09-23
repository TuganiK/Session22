public class ListSetMaps_Demo {
    
    public void printListValues(){        
        /*List demo*/
        List<Integer> countOfTen = new List<Integer>();
        countOfTen.add(10);
        countOfTen.add(20);
        countOfTen.add(30);
        countOfTen.add(40);
        countOfTen.add(50);
        system.debug('Display countOfTen: '+countOfTen);
        //Get the value based on Index
        system.debug('Get the Value: '+countOfTen.get(3));        
    }
    
    public void printSetValues(){
        /*Set Demo*/
        set<String> avengersSet = new set<String>();
        avengersSet.add('Iron Man');
        avengersSet.add('Captain America');
        avengersSet.add('Spider Man');
        avengersSet.add('Hulk');
        avengersSet.add('Dr.Strange');
        system.debug('Print set values: '+avengersSet);
        //Display set size
        system.debug('Display size of the avengersSet: '+avengersSet.size());
           
    }
    
    public void printMapValues(){
        /*Maps Demo*/
        //Key DataType - String
        //Value DataType - String
        Map<String,String> fruitsMap = new Map<String,String>();
        fruitsMap.put('First','Apple');
        fruitsMap.put('Second','Orange');
        fruitsMap.put('Third','Mango');
        fruitsMap.put('Fourth','Kiwi');
        fruitsMap.put('Fifth','Grape');
        system.debug('Display Fruits Map: '+fruitsMap);
        //Get a particular value
        system.debug('Get me Fourth fruit : '+fruitsMap.get('Fourth'));
        //Retrieve and display all the Keys of the Map
        Set<String> fruitsKey = new Set<String>();
        fruitsKey = fruitsMap.keySet();
        system.debug('FruitsMap Keys : '+fruitsKey);
        //Retrieve and display all the Values of the Map
        List<String> fruitsValues = new List<String>();
        fruitsValues = fruitsMap.values();
        system.debug('FruitsMap Values : '+fruitsValues);        
    }
}