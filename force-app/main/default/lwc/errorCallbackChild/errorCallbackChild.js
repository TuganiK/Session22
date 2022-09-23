import { LightningElement } from 'lwc';

export default class ErrorCallbackChild extends LightningElement {
    connectedCallback(){
        console.log("Child - ConnectedCallback");
        throw new Error("Error occcured while fetching the data from database");
    }
}