public class collectionsExercise {
    /*List and List Methods*/
    public static void listMethodsPractice(){
        List<String> colourList = new List<String>();
        colourList.add('red');
        colourList.add('green');
        colourList.add('blue');
        colourList.add('yellow');
        colourList.add('pink');
        
        system.debug('Colour List : '+colourList);
        
        Integer listSize = colourList.size();
        system.debug('Print the size of the list : '+listSize);
        
        Boolean checkContainsRed = colourList.contains('red');
        system.debug('List contains red? '+checkContainsRed);
        
        String lastElement = colourList.get(listSize - 1);
        String lastElementUpper = lastElement.toUpperCase();
        system.debug('lastElement uppsercase :'+lastElementUpper);
        
        colourList[3] = colourList[3].toUpperCase();
        system.debug('Print the colorList: '+colourList);
        
        List<String> colourCodeList = new List<String>{'#FF0000','#0000FF','#000FFF','#ADDBE6', '#ADBEU7'};
        system.debug('Print colourCodeList: '+colourCodeList);
        
        Boolean areTwoListEqual = colourList.equals(colourCodeList);
        system.debug('Are two list equal? :'+areTwoListEqual);
        
        List<String> mergedList = new List<String>();
        mergedList.addAll(colourList);
        mergedList.addAll(colourCodeList);
        system.debug('Merged List: '+mergedList);    
      
    }
    
    /*Set and Set Methods*/
    public static void setMethodsPractice(){
        Set<String> uniqueNameSet = new Set<String>{'Tom','Jerry'};
        system.debug('Set values : '+uniqueNameSet);
        
        Integer setSize = uniqueNameSet.size();
        system.debug('Set Size: '+setSize);
        
        uniqueNameSet.add('Olive');
        uniqueNameSet.add('Popeye');
        uniqueNameSet.add('Brutus');
        system.debug('Set values : '+uniqueNameSet);
        
        string myName = 'Dextor';
        Boolean containsmyName = uniqueNameSet.contains(myName);
        system.debug('Contains myName? '+containsmyName);
        
        Boolean isEmptyCheck = uniqueNameSet.isEmpty();
        system.debug('Is the Set empty? '+isEmptyCheck);
        
        uniqueNameSet.clear();
        isEmptyCheck = uniqueNameSet.isEmpty();
        system.debug('Is the Set empty after clear? '+isEmptyCheck);
    }
    
    /*Map and Map Methods*/
    public static void mapMethodsPractice(){
        Map<Integer,String> zipCodeToCityMap = new Map<Integer,String>();
        zipCodeToCityMap.put(100101, 'New Delhi');
        zipCodeToCityMap.put(101234, 'Istabul');
        zipCodeToCityMap.put(569023, 'New York City');
        zipCodeToCityMap.put(667788, 'London');
        system.debug('Print zipCodeToCityMap : '+zipCodeToCityMap);
        
        Boolean checkContains = zipCodeToCityMap.containsKey(123456);
        system.debug('Map contains 123456? '+checkContains);
        
        system.debug('Display Zip Codes : '+zipCodeToCityMap.keySet());
        system.debug('Display City Names : '+zipCodeToCityMap.values());
        
        system.debug('Total number of mapping? '+zipCodeToCityMap.size());
        
        Set<Integer> zipCodeSet = zipCodeToCityMap.keySet();
        system.debug('zipCodeSet : '+zipCodeSet);
        
        List<String> cityNamesList = zipCodeToCityMap.values();
        system.debug('cityNamesList : '+cityNamesList);
        
        Boolean isMapEmpty = zipCodeToCityMap.isEmpty();
        system.debug('Is the Map Empty? '+isMapEmpty);
        
    }
    
}