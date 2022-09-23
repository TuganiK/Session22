import { LightningElement } from 'lwc';

export default class FameousPersons extends LightningElement {
    persons = [{
        name : 'Jeff Bezos', 
        title : 'Executive Chairman',
        company : 'Amazon',
        country : 'United States'
    },
        {
            name : 'Sundar Pichai', 
        title : 'Chief Executive Officer',
        company : 'Google',
        country : 'United States'},
        {
            name : 'Tim Cook', 
        title : 'Chief Executive Officer',
        company : 'Apple',
        country : 'United States'},
        {
            name : 'Mark Zuckerberg', 
        title : 'Chief Executive Officer',
        company : 'Facebook',
        country : 'United States'},
        
    ];
    
}