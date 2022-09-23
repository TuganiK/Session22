import { LightningElement } from 'lwc';

export default class P2cCallingChildMethodParent1 extends LightningElement {
    clickHandler(){
        this.template.querySelector('c-slider-component').resetSlider();
    }
}