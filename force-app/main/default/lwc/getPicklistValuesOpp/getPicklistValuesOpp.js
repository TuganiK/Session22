import { getObjectInfo, getPicklistValues, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import OPP_OBJECT from '@salesforce/schema/Opportunity';

/*Create a lightning web component that displays the following inputs from Opportunity Object – 
	Opportunity Name (Text)
	Opportunity Type (bring all the picklist values)
	Stage (bring all the picklist values)
	Display the entered information (in all 3 fields) in div dynamically

    Using the “getObjectInfo” adapter, get the opportunity object information.
    Get the default record type id upon getting the object information successfully.
    Using the “getPicklistValues” or “getPicklistValuesByRecordType” adapter, get all the picklist values available on Stage & Type field
    Collect the picklist values and display the same in template using combo box
    Upon entering opportunity name or selecting a stage/type, populate the div dynamically with the selected information

 */
export default class GetPicklistValuesOpp extends LightningElement {
recordtypeId;
stageOptions=[];
typeOptions=[];
oppName;
selectedStage;
selectedType;
@wire(getObjectInfo,{objectApiName:OPP_OBJECT})
objectHandler({data,error}){
    if(data){
        this.recordtypeId=data.defaultRecordTypeId;
    }
}
@wire(getPicklistValuesByRecordType,{objectApiName:OPP_OBJECT,recordTypeId:'$recordtypeId'})
picklistHandler({data,error}){
    if(data){
        console.log(data);
        this.stageOptions=data.picklistFieldValues.StageName.values;
        this.typeOptions=data.picklistFieldValues.Type.values;
    }
}
changeHandler(event){
    if(event.target.name==='Opportunity'){
    this.oppName=event.target.value;
    }else if(event.target.name==='Stage'){
        this.selectedStage=event.target.value;
    }else{
        this.selectedType=event.target.value;
    }
}
}