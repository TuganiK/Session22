public class EmployeeInfoMapsDemo {     
    /*Employee Info Map*/
        public string showEmployeeInfo(Integer empNumber){
            Map<Integer,String> employeeMap = new  Map<Integer,String>();
            employeeMap.put(001,'Madhu');
            employeeMap.put(002,'Sri');
            employeeMap.put(003,'Huseyin');
            employeeMap.put(004,'Sara');
            employeeMap.put(005,'Ben');
            String empName = employeeMap.get(empNumber);
            return empName;
        }
    }