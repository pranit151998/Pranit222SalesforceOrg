import { LightningElement,track } from 'lwc';

export default class Lwc_spinner extends LightningElement {
    @track showone=false;
    @track showtwo=false;
    @track showthree=false;


    spinneroneHandler()
    {
        this.showtwo=false;
        this.showthree=false;
        this.showone=true;
        window.setTimeout(() => { this.showone = false;}, 2000);
      

    }
    spinnertwoHandler()
    {
        this.showone=false;
        this.showthree=false;
        this.showtwo=true;
        window.setTimeout(() => { this.showtwo = false;}, 2000);

    }
    spinnerthreeHandler()
    {
        this.showone=false;
        this.showtwo=false;
        this.showthree=true;
        window.setTimeout(() => { this.showthree = false;}, 2000);

    }
}