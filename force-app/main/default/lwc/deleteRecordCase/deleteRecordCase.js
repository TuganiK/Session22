import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DeleteRecordCase extends LightningElement {
    recordId;

    //collect the entered record id
    changeHandler(event) {
        this.recordId = event.target.value;
    }

    //using the deleteRecord function, delete the record
    deleteRec() {
        deleteRecord(this.recordId)
        .then(result => {
            console.log(result);
            this.createToast("Error", "The record has been deleted successfully","success");
        })
        .catch(error => {
            console.log(error);
            this. createToast("Error","The rocord has not been deleted please enter a valid Id","error");
        })
    }

    createToast(title, message, variant) {
        const toast = new ShowToastEvent({title, message, variant});
        this.dispatchEvent(toast);
    }
}