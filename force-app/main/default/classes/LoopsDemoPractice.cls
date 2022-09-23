/* 
Create a new staticmethod in 'LoopDemoPractice' class,
named updateMap
Create a Student Map in the method to capture Roll Number and
Student Name
Append the Student Name with a string, eg, Student 1, Student 2
etc., and update the Map
Print the map before and after the changes are made to compare
Eg
Details
(25)/DEBUG student as before charges (206) - Jerves, 1002-kate, 1003-Jarm. 1004- Senére, 1006- Marc}
34 DEBUG student
•her changes/(3006 -James - Qudert I, 1002- Kale - Studert 2, 1003- Jerry - Sudert 1, 1004-Saréra - Sudert-4, 1005- Marc - Stadest 5]
Li sort Innovos
 */
public class LoopsDemoPractice {    
    //Multiplication table
    public void displayMultiplicationTable(Integer inputNum){
        Integer i=0;
        for(i=1;i<=10;i++){
            system.debug(i+ ' * '+inputNum+' = '+i*inputNum);
        }
    }    
    
    //Sum of Integers
    //0+10 = 10
    //10+20 = 30
    //30+30 = 60
    public integer sumOfIntegers(List<Integer> inputList){
        Integer sum = 0;
        if(!inputList.isEmpty()){
            for(Integer i=0; i<inputList.size(); i++){
                sum = sum + inputList.get(i);
            }
        }
        return sum;
    }     
    
    //Create a new method in 'LoopDemoPractice' class named reverseListValues
    // Create a List in the method
    // Reverse the values in the list and display the reversed list values.
    // Eg, Input List-(10,20,30,40,50) Reverse List-(50,40,30,20,10)
    
    public void reverseListValues(){
        List<Integer> originalList = new List<Integer>{10,20,30,40,50};
        List<Integer> reverseList = new List<Integer>();
        for(Integer i=originalList.size()-1;i>=0;i--){
            reverseList.add(originalList.get(i));
        }
        system.debug('Original List: '+originalList);
        system.debug('Reverse List: '+reverseList);
    }
    
    //Update values in Map in a format
     public static void updateMap(){
        Map<Integer,String> studentMap = new Map<Integer,String>();
        studentMap.put(1001,'James');
        studentMap.put(1002,'Kate');
        studentMap.put(1003,'Jenny');
        studentMap.put(1004,'Sandra');
        studentMap.put(1005,'Marc');
        system.debug('studentMap before changes:'+studentMap);
        Set<Integer> rollNumSet = studentMap.keyset();
        Integer countValue =1;
        for(Integer rollNum : rollNumSet){            
            String fullDetails = studentMap.get(rollNum) + ' - ' + 'Student ' +CountValue;
            studentMap.put(rollNum,fullDetails);
            countValue++;
        }
        system.debug('studentMap after changes:'+studentMap);
    }
    // This is how we execute it annoymous
    //LoopsDemoPractice.updateMap(); directly from class name because of static
}

 




/*Anonymous Code :
LoopsDemoPractice demo = new LoopsDemoPractice();
List<Integer> inputList = new List<Integer>{10,20,30};
Integer sum = demo.sumOfInteger(inputList);
system.debug('Sum: '+sum);  */