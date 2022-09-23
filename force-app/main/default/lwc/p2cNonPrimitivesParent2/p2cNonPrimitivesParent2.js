import { LightningElement } from 'lwc';

export default class P2cNonPrimitivesParent2 extends LightningElement {
    contacts = [
        {
            FirstName : "Bala",
            LastName: "Bezos", 
            Title : "Executive Chairman", 
            Department: "Sales"
        },
        {
            FirstName : "Sundar",
            LastName: "Pichai", 
            Title : "Chief Executive Officer", 
            Department: "Chrome"
        },
        {
            FirstName : "Sri",
            LastName: "Cook", 
            Title : "Chief Executive Officer", 
            Department: "Marketing"
        }
        
    ];
}