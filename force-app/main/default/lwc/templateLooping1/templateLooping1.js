import { LightningElement } from 'lwc';

export default class TemplateLooping1 extends LightningElement {
    contacts = [
        {name: 'Tuncay ', role:'Salesforce Consultant'},
        {name: 'Huseyin ',role:'Salesforce Admin'},
        {name: 'Zehra ',role:'Salesforce Manager'},
    ];
}