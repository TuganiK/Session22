import { LightningElement } from 'lwc';
import searchContacts from '@salesforce/apex/ContactCtrl.searchContacts';

export default class ImperativeApex1 extends LightningElement {
    searchWord;
    contacts;
    error;

    changeHandler(event) {
        this.searchWord = event.target.value;
        searchContacts({searchKey: this.searchWord})
            .then(result => {
                console.log(result);
                this.contacts = result;
            })
            .catch(error => {
                console.error(error);
                this.error = error;
            })
    }
}