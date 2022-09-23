import { LightningElement } from 'lwc';

export default class Getters extends LightningElement {
    fruits =["Apple","Orange","Banana","Grapes"];
    num1 = 10;
    num2 = 20;

    get firstFruit(){
        return this.fruits[0];
    }
    get sumOfNums(){
        return this.num1 + this.num2;
    }
    get multipication(){
        return this.num1 * this.num2;
    }
    get division(){
        return this.num1 / this.num2;
    }
}