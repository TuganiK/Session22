import { LightningElement, track } from 'lwc';

export default class LwcFundamentals extends LightningElement {
  
    @track myName ={fullName:"Jackie Chan"};
     @track myAge ={age: 68 };

     changeHandler1(event){
        this.myName = event.target.value; 
       // this.nameAge = event.target.value;
     }
     changeHandler2(event){
        this.myAge = event.target.value;
     }

}