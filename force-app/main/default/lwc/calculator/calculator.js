import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {
    num1=0;
    num2=0; 
    get sumOfNums(){
        return Number(this.num1)+Number(this.num2);
    }
    handleChange1(event){
        this.num1 = event.target.value;
    }
    handleChange2(event){
        this.num2 = event.target.value;
    }
}