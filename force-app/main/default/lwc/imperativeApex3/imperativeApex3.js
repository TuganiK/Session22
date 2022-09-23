import { LightningElement, wire } from 'lwc';
import getAllAccounts from '@salesforce/apex/AccountCtrl.getAllAccounts'
import countContacts from '@salesforce/apex/AccountCtrl.countContacts'
/* 
UC:
Get all the accounts and display them as combo box options. Every time, we make an account selection, display the number of contacts available on that account

1. Write an apex method to get all the accounts.
2.Take that accounts and prepare combo box options ( label: "", value: "")
3. using those combo box options, we can display a combo box
4. Everytime there is aselection of combo box options, get the value (accoun id)
5. we can pass that account id o an apex method, get the number of contacts on that acc.
6. get it and display the same. */

export default class ImperativeApex3 extends LightningElement {
    selectedAccount;
    accountOptions = [];
    contactsSize;

    @wire(getAllAccounts)
    accountsHandler({data,error}) {
        if (data) {
            console.log(data);
            this.accountOptions = this.picklistGenerator(data);
            console.log(this.accountOptions);
        }
        if (error) {
            console.log(error);
        }
    }

    picklistGenerator(data) {
       return data.map(item =>({
        label: item.Name,
        value: item.Id
       }));
    }

    changeHandler(event) {
        this.selectedAccount = event.target.value;
        countContacts({accId: this.selectedAccount})
        .then(result => {
            console.log(result);
            this.contactsSize = result;
        })
        .catch(error => {
            console.log(error);
        })
    }   
}