import { LightningElement, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import ACC_NAME_FIELD from '@salesforce/schema/Case.Account.Name';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import REASON_FIELD from '@salesforce/schema/Case.Reason';
import TYPE_FIELD from '@salesforce/schema/Case.Type';
import STATUS_FIELD from '@salesforce/schema/Case.Status';

/*Create a lightning web component that displays the following field values from the Case object for the given record id – 
	Account Name
	Subject
	Priority
	Reason
	Type
	Status
    Using the “getRecord” adapter, get the case details and display them in read only format.
 */
const FIELDS=[ACC_NAME_FIELD,
    SUBJECT_FIELD,
    PRIORITY_FIELD,
    REASON_FIELD,
    TYPE_FIELD,
    STATUS_FIELD];
export default class GetRecordFormCase extends LightningElement {
    recordId='5008b00001zpBrRAAU';
    name;
    subject;
    priority;
    reason;
    type;
    status;
    @wire(getRecord,{recordId:'$recordId',fields:FIELDS})
    caseHandler({data,error}){
        if(data){
            console.log(data);
            this.name=data.fields.Account.displayValue;
            this.subject=data.fields.Subject.value;
            this.priority=data.fields.Priority.value;
            this.reason=data.fields.Reason.value;
            this.type=data.fields.Type.value;
            this.status=data.fields.Status.value;
        }
        if(error){
            console.error(error);
        }
    }
}