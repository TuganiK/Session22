import { LightningElement } from 'lwc';

export default class ModalParent2 extends LightningElement {
    showModal = false;
    info;

    modalHandler(){
        this.showModal = true;
    }
    closeHandler(event){
        this.showModal = false;
        console.log(event);
        console.log(event.detail);
        this.info = event.detail;
    }
}