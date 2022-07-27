import { LightningElement,track } from 'lwc';
export default class Lwc_Calculator extends LightningElement {
    @track resultValue;
    num1;
    num2;

    callMe(event)
    {
        const evtname=event.target.name;
        if(evtname=='aval')
        {
            this.num1=event.target.value;
        }
        else
        {
           this.num2=event.target.value; 
        }
     
    }
    add()
    {
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue ='Sum of given number is==>'+(a+b);
    }
  

}