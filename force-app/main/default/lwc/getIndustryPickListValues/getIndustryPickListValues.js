import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
export default class GetIndustryPicklistValues extends LightningElement {
    defaultRtId;
    industryOptions;
    @wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
    objectHandler({data,error}){
        if(data){
            this.defaultRtId = data.defaultRecordTypeId;
        }
        if(error){
        }
    }
    selectedIndustry;
    @wire(getPicklistValues,{fieldApiName:INDUSTRY_FIELD,recordTypeId:'$defaultRtId'})
    picklistHandler({data,error}){
        if(data){
            console.log(data);
            this.industryOptions = data.values;
        }
        if(error){
        }
    }
    changeHandler(event){
        this.selectedIndustry = event.target.value;
    }
}