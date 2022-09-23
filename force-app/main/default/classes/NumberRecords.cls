/* Classwork 1
.Create a class called NumberRecords
.Create a method called validateNumbers, which wil have a list of numbers
.We need to pass one number to check if that number exist in that list.
.E.g List<Integer> => [6,8,10,12,14,15] 
Input : 10
Output : Number exist in the list */

public class NumberRecords {
    public void validateNumbers(Integer inputNum){
        List<Integer> values = new List<Integer>();
        values.add(6);
        values.add(8);
        values.add(10);
        values.add(12);
        values.add(14);
        values.add(15);
        if(values.contains(inputNum)){
            system.debug('Number exists in the List');
        }
    }

    /* ClassWork 2
.Create a class called NumberRecords
.Create a method called compareSets, which will have 1 set in the method, Set1 => [111,222,333]
.We need to pass Set in the parameter and compare the sets
.
.E.g.
Input : Set2 => [222,3333,111] 
Output : Both sets are identical
Input : Set2 => [444,333,111]
Output : Both sets are not identical */

     public void compareSets(Set<Integer> inputSet){
        Set<Integer> values = new Set<Integer>();
        values.add(111);
        values.add(222);
        values.add(333);
        if(values.equals(inputSet)){
            system.debug('Both sets are identical');
        }
         else{
             system.debug('Both sets are NOT identical');
         }
    }
}

/*    Annoymous Execute

    NumberRecords demo = new NumberRecords(); 
    Set<Integer> inputSet = new Set<Integer>();
    inputSet.add(444);
    inputSet.add(333);
    inputSet.add(222);
    inputSet.add(345);
    demo.compareSets(inputSet);   */