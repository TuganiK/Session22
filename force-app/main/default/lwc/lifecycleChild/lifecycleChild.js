import { LightningElement } from 'lwc';

export default class LifecycleChild extends LightningElement {
    constructor(){
        super();
        console.log("Child constructor");
    }

    connectedCallback(){
        console.log("Child connectedallback");
    }

    renderedCallback(){
        console.log("Child renderedCallback");
    }
}