import { LightningElement,track } from 'lwc';

export default class LwcCal extends LightningElement {

    @track resultValue;
    num1;
    num2;

    callme(event)
    {
        const evtname=event.target.name;
        if(evtname =='aval')
        {
            this.num1=event.target.name;
        }
        else
        {
           this.num2=event.target.name; 
        }
    }

    add()
    {
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue ='Sum of given number is' +(a+b);
    }
    
    sub()
    {
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue ='Subtraction of given number is' +(a-b);
    }
    
    mult()
    {
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue ='Multiplication of given number is' +(a*b);
    }


}