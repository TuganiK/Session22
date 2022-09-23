import { LightningElement } from 'lwc';

export default class ModalChild extends LightningElement {
    closeHandler(){
        console.log("Before creating and dispatching the event!")
        const closeEvent = new CustomEvent('close');
        this.dispatchEvent(closeEvent);
    }
}