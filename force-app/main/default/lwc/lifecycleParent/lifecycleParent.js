import { LightningElement } from 'lwc';

export default class LifecycleParent extends LightningElement {
    constructor(){
        super();
        console.log("Parent constructor");
    }

    connectedCallback(){
        console.log("Parent connectedallback");
    }

    renderedCallback(){
        console.log("Parent renderedCallback");
    }
}