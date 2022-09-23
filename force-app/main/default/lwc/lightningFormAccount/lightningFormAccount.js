import { LightningElement } from 'lwc';
import { ShowToastEvent} from 'lightning/platformShowToastEvent';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import ACCOUNTNUMBER_FIELD from '@salesforce/schema/Account.AccountNumber';

export default class LightningFormAccount extends LightningElement {
    recordId = "0018b000020VMcxAAG";
    objectName = ACCOUNT_OBJECT;
    fields = [NAME_FIELD,ANNUALREVENUE_FIELD,ACCOUNTNUMBER_FIELD];

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