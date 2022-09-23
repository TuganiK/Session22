public class DemoWhiledoWhile {    
    /*Demo While*/
    public void printValuesWhile(){
       //Print 1 to 10
       Integer count = 1;
        while(count<11){
            system.debug('Count : '+count);
            count++;            
        }           
    }    
    /*Demo do-While*/
    public void printValuesdoWhile(){
       //Print 1 to 10
       Integer count = 1;
        do{
            system.debug('Count : '+count);
            count++;
        } while(count < 11);          
    }
}