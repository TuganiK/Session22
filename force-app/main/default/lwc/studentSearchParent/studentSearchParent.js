import { LightningElement } from 'lwc';
import searchStudentsByPostalCode from '@salesforce/apex/TalebeCtrl.searchStudentsByPostalCode'

const COLUMNS = [
    {label: "Talebe Name", fieldName: "Talebe_Name__c", type: "text"},
    {label: "Class", fieldName: "Class__c", type: "text"},
    {label: "Mobile", fieldName: "Mobile__c", type: "text"},
    {label: "Email", fieldName: "Email__c", type: "text"},
    {label: "Postal Code", fieldName: "Postal_Code__c", type: "text"}
]
export default class StudentSearchParent extends LightningElement {
    searchWord;
    students;
    columns = COLUMNS;
    error = "Enter a postal code to search for students list";
    changeHandler(event){
        this.searchWord = event.target.value;
        if(this.searchWord.length == 0){
            this.students = undefined;
            this.error = "Enter a postal code to search students list";
        }
        if(this.searchWord.length > 0){
            this.students = undefined;
        searchStudentsByPostalCode({postalCode: this.searchWord})
        .then(result => {
            console.log(result);
            this.students = result;
            if(this.students.length == 0){
                this.error = "There are no students in system with given postal code";
                this.students = undefined;
            }else{
                this.error = undefined;
            }
        })
        .catch(error => {
            console.log(error);
            this.error = error;
            this.students = undefined;
        })
    }
    }
}