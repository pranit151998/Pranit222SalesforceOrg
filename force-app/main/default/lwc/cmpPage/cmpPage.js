import { LightningElement,track } from 'lwc';

export default class CmpPage extends LightningElement {

    @track resultValue;
    @track resultValue1;
    @track number1;
    @track number2;
    @track number3;
    
    onNumberOneChange (event) {
        this.number1 = event.target.value;
    }
    onNumberTwoChange (event) {
        this.number2 = event.target.value;
    }
    onNumberThreeChange  (event) {
        this.number3 = event.target.value;
    }
    onNumberOneChange1 (event) {
        this.numbera = event.target.value;
    }
    onNumberTwoChange1 (event) {
        this.numberb = event.target.value;
    }
    
    add()
    {
        const sum = parseInt(this.number1) + parseInt(this.number2) +  parseInt(this.number3);
        this.resultValue ='Sum of given number is'+' ' +(sum);
    }
    addTwoNumbers()
        {
        const sum = parseInt(this.numbera) + parseInt(this.numberb);
        this.resultValue ='Sum of given number is'+' ' +(sum);
        }
    
}