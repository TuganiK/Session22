import { LightningElement } from 'lwc';

export default class MyNameRole extends LightningElement {
    username  ;
    role ;
    get options() {
        return [
            { label: 'Salesforce Admin', value: 'Salesforce Admin' },
            { label: 'Salesforce Devoloper', value: 'Salesforce Devoloper' },
            { label: 'Salesforce Architect', value: 'Salesforce Architect' },
        ];
    }

   changeHandler1(event){
       this.username = event.target.value; 
      // this.nameAge = event.target.value;
    }
    changeHandler2(event){
       this.role = event.target.value;
    }
}