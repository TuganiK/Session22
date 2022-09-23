import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT_OBJECT from '@salesforce/schema/Case';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description'
import ACCOUNTID_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACTID_FIELD from '@salesforce/schema/Case.ContactId';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';

export default class LightingRecordEditCase extends LightningElement {
    recordId = "";
    objectName = CONTACT_OBJECT;
    fields = {
        subject: SUBJECT_FIELD,
        description: DESCRIPTION_FIELD,
        accountName: ACCOUNTID_FIELD,
        contactName: CONTACTID_FIELD,
        priority: PRIORITY_FIELD,    
    };

    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Information has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }
}