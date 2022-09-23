import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CASE_OBJECT from '@salesforce/schema/Case';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';

export default class CaseForm extends LightningElement {
    recordId = '5008b00001zpBrRAAU';
    objectName = CASE_OBJECT;
    fields = [SUBJECT_FIELD,PRIORITY_FIELD,STATUS_FIELD,DESCRIPTION_FIELD,ORIGIN_FIELD];

    successHandler(){
        const successEvent = new ShowToastEvent({
            title : "Success",
            message : "Record is saved succesfuly",
            variant : "Success"
        });
        this.dispatchEvent(successEvent);
    }
    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title : "Error",
            message : "Record is not saved succesfuly!",
            variant : "Error"
        });
        this.dispatchEvent(errorEvent);
    }
}