import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
export default class LightningRecordForm extends LightningElement {
    recordId = '0038b00002m6GuCAAU';
    objectName = CONTACT_OBJECT;
    fields = [FIRSTNAME_FIELD,LASTNAME_FIELD];

    successHandler(){
        const successEvent = new ShowToastEvent({
            title : "Success",
            message :"Record is saved successfully",
            variant : "Success"
        });
        this.dispatchEvent(successEvent);
    }
    errorHandler(){
        const errorEvent = new ShowToastEvent({
            title : "Error",
            message :"Record is not saved successfully",
            variant : "Error"
        });
        this.dispatchEvent(errorEvent);
    }
}