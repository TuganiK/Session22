import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import RecordId from '@salesforce/schema/CollaborationGroupRecord.RecordId';


export default class GetAccountObjectInfo extends LightningElement {

    RecId;
    @wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
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