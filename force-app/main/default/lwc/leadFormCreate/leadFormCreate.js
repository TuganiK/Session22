import { LightningElement } from 'lwc';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
/*Create a lightning web component that would display a form to collect lead information from   web. The lead form should contain the following fields displayed
	First Name
	Last Name
	Email
	Phone
	Company

    Create a form to take inputs from the user. You may use lightning inputs
Every time there is a change in any one of the input values, get the same updated in the record
Create a recordInput and pass the same into createRecord function to create a lead record
Show appropriate success/failure messages upon saving the record

 */
export default class LeadFormCreate extends LightningElement {
    formdata={};
    changeHandler(event){
        const {name,value}=event.target;
        this.formdata[name]=value;
    }
    cancelLead(){
        this.template.querySelector('form.lead').reset();
        this.formdata={};
    }
    saveLead(){
        const recordInput={
            apiName:LEAD_OBJECT.objectApiName,
            fields:this.formdata
        };
        createRecord(recordInput)
            .then(result=>{
                console.log(result);
                this.createToast('Success','Lead has been saved successfully!','success');
                this.cancelLead();
            })
            .catch(error =>{
                console.error(error);
                this.createToast('Error','Lead has NOT been saved successfully!','error');
            })
    }
    createToast(title,message,variant){
        const toast=new ShowToastEvent({title,message,variant});
        this.dispatchEvent(toast);
    }
}