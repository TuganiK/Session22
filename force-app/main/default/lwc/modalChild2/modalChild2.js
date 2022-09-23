import { LightningElement } from 'lwc';

export default class ModalComponent1 extends LightningElement {
    closeHandler(){
        // const closeEvent = new CustomEvent('close',{detail: "Modal was closed!"});
        // this.dispatchEvent(closeEvent);

        const con = {
            FirstName: "Elon",
            LastName: "Musk",
            Title: "CEO"
        }
        const closeEvent = new CustomEvent('close',{detail: con});
        this.dispatchEvent(closeEvent);
    }
}