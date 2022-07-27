import { LightningElement,api } from 'lwc';

export default class Lwc_loader extends LightningElement {
    @api spinnerText='';
    @api size=''
    @api variant='Brand'

    gethelpText()
    {
        return this.spinnerText?this.spinnerText:'Loading Spinner'
    }
}