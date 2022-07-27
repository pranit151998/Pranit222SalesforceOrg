import { LightningElement } from 'lwc';
import Account_object from '@salesforce/schema/Account';
import Account_Name from '@salesforce/schema/Account.Name';
import Account_Type from '@salesforce/schema/Account.Type';
import Account_Phone from '@salesforce/schema/Account.Phone';
import Account_Industry from '@salesforce/schema/Account.Industry';


export default class LwcRecordForm extends LightningElement 

    {
        acc_data=Account_object;
        myfields=[Account_Name,Account_Type,Account_Phone,Account_Industry];
        }