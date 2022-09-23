import { LightningElement, wire } from 'lwc';
import getTopOpp from '@salesforce/apex/OpportunityCtrl.getTopOpp';

const COLUMNS = [
    {label: "Opportunity Name", fieldName: "Name", type: "text"},
    {label: "Opportunity Type", fieldName: "Type", type: "text"},
    {label: "Stage Name", fieldName: "StageName", type: "text"},
    {label: "Amount", fieldName: "Amount", type: "currency"}
];

export default class WiredApexMethodOpp extends LightningElement {
    columns = COLUMNS;

    @wire(getTopOpp)
    opportunities;
}