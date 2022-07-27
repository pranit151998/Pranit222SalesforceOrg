import { LightningElement,track,wire } from 'lwc';
import getContactList from '@salesforce/apex/eg2_Datatable.getContactList';
const colFetch =[

    {label:'FirstName',fieldName:'FirstName'},
    {label:'LastName',fieldName:'LastName'},
    {label:'Email',fieldName:'email'},
    {label:'Phone',fieldName:'phone'},
    
];

export default class UpdateData_Datatable extends LightningElement {
    
        @track col=colFetch;
        @wire(getContactList) contact;
        

}