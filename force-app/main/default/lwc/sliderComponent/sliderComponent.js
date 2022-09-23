import { api, LightningElement } from 'lwc';

export default class SliderComponent extends LightningElement {
    val;

    @api resetSlider(){
        console.log("I was called by parent!");
        this.val = 50;
    }
    changeHandler(event){
        this.val = event.target.value;
    }
}