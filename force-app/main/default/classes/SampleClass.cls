public class SampleClass {    
    /*Method to return String*/
    public string getFullName(String firstName,String lastName){
     String fullName = firstName + lastName;
     return fullName;
    }
     /*Method to return Integer*/
     public Integer getSum(Integer a,Integer b,Integer c){
         Integer sum = a + b+ c;
         return sum;
     }
     /*Method to return Boolean*/
     public Boolean getContains(String demoString){
         Boolean checkContainsValue = demoString.contains('testing');
         return checkContainsValue;
     }
 }