import { LightningElement } from 'lwc';

export default class TwoWayDatabinding extends LightningElement {
    fullname = "LWC Salesforce";
    title = "Salesforce Devoloper";

    handleChange(event){
      this.title = event.target.value;
    }
}