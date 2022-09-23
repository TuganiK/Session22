import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import RecordId from '@salesforce/schema/CollaborationGroupRecord.RecordId';


export default class GetAccountObjectInfo extends LightningElement {

    RecId;
    @wire(getObjectInfo,{objectApiName:OPPORTUNITY_OBJECT})
    objectHandler({data,error}){
        if(data){
            console.log(data);
             this.RecId = data.defaultRecordTypeId;
        }
        if(error){
            console.log(error);

        }
    }
}