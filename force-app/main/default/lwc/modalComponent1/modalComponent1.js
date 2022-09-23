import { LightningElement } from 'lwc';

export default class ModalComponent1 extends LightningElement {
    closeHandler(){
        const closeEvent = new CustomEvent('close',{detail: "Modal was closed!"});
        this.dispatchEvent(closeEvent);
    }
}