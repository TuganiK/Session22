import { LightningElement } from 'lwc';
import getAccounts from '@salesforce/apex/AccountCtrl.getAccounts';

const COLUMNS=[
    {label:'Account Name',fieldName:'Name',type:'text'},
    {label:'Account Type',fieldName:'Type',type:'text'},
    {label:'Industry',fieldName:'Industry',type:'text'},
    {label:'Annual Revenue',fieldName:'AnnualRevenue',type:'currency'}];

export default class SearchAccount extends LightningElement {
    searchWord;
    accounts;
    error;
    changeHandler(event){
     this.searchWord=event.target.value;
     if(this.searchWord.length>2){
      getAccounts({search:this.searchWord})
      .then(result =>{
         console.log(result);
         this.accounts=result;
      })
      .catch(error =>{
         console.log(error);
         this.error=error;
      })
     }
    }
    columns=COLUMNS;
     
}