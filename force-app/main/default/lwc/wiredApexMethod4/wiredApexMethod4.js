import { LightningElement, wire } from 'lwc';
import getOppsByStage from '@salesforce/apex/OpportunityCtrl.getOppsByStage';

const COLUMNS = [
    {label: "Opportunity Name", fieldName: "Name", type: "text"},
    {label: "Opportunity Type", fieldName: "Type", type: "text"},
    {label: "Stage Name", fieldName: "StageName", type: "text"},
    {label: "Amount", fieldName: "Amount", type: "currency"}
];

export default class WiredApexMethod4 extends LightningElement {
    selectedStage = 'Closed Won';
    columns = COLUMNS;

    @wire(getOppsByStage, {stage: '$selectedStage'})
    opps;
}