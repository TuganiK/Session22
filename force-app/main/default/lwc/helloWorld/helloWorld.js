import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name; //undefiend 
    fullname = 'Salesforce Devoloper'// string type
    age = 30;// number type
    location={
        city : 'Huston',
        country : "United States",
        postalcode :"50003"
    }; // object type
    fruits = ["Orange","Banana","Grapes","Apple"];// array type
    num1 =10;
    num2 = 20;
    num3 = this.num1+this.num2;

    sum(num1, num2){
        this.fullname = "";
        return num1+num2;
    }
    converToUpperCase(fullname){
        return fullname.converToUpperCase();
    }
}