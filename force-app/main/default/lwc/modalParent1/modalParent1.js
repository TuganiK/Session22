import { LightningElement } from 'lwc';

export default class ModalParent extends LightningElement {
    showmodal = false;

    modalHandler(){
        this.showmodal = true;
    }
    closeHandler(){
        this.showmodal = false;
    }
}