import { LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CreateRecordContact extends LightningElement {
    formdata = {};

    changeHandler(event) {
        //const name = event.target.name;
        //const value = event.target.value;
        const {name, value} = event.target;
        this.formdata[name] = value;
    }

    cancelContact() {
        this.template.querySelector('form.contact').reset();
        this.formdata = {};
    }

    saveContact() {
        const recordInput = {
            apiName: CONTACT_OBJECT.objectApiName,
            fields: this.formdata
        };
        createRecord(recordInput)
            .then(result => {
                console.log(result);
                this.createToast("Success", "Contact has been saved successfully!", "success");
                this.cancelContact();
            })
            .catch(error => {
                console.error(error);
                this.createToast("Error", "Error occurred while saving the information!", "error");
            })
    }

    createToast(title, message, variant) {
        const toast = new ShowToastEvent({title, message, variant});
        this.dispatchEvent(toast);
    }
}


//event.target.label
//event.target.name
//event.target.value

// formdata = {
//     FirstName: "Bala",
//     LastName: "E",
//     Email: "test@tst.com",
//     Title: "Salesforce Architect",
//     Department: "Consulting"
// }