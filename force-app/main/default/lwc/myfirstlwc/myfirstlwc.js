import { LightningElement, api, } from 'lwc';

export default class Myfirstlwc extends LightningElement {
    handleSubmit(event)
    {
        alert('This is Lwc component');
    }

}