import getAllAccounts from '@salesforce/apex/AccountCtrl.getAllAccounts';
import getOppOfTotalAmount from '@salesforce/apex/AccountCtrl.getOppOfTotalAmount';
import { LightningElement, wire } from 'lwc';

export default class OppDetails extends LightningElement {
    selectedAcc;
    accountOptions=[];
    totalAmount;
    @wire(getAllAccounts)
    accountHandler({data,error}){
        if(data){
            console.log(data);
            this.accountOptions=this.picklistGenerator(data);
            console.log(this.accountOptions);
        }
        if(error){
            console.error(error);
        }
    }
    picklistGenerator(data){
        return data.map(acc=>({
            label:acc.Name,
            value:acc.Id
        }));
    }
    changeHandler(event){
        this.selectedAcc=event.target.value;
        getOppOfTotalAmount({accId:this.selectedAcc})
        .then(result=>{
            console.log(result);
            this.totalAmount=result;
        })
        .catch(error=>{
            console.log(error);
        })
    }
}