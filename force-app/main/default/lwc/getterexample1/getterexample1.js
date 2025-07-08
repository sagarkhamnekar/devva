import { LightningElement } from 'lwc';

export default class Getterexample1 extends LightningElement {

firstname ='getter ';
lastname ='method';

get fullname() {
    return {this:firstname,this:lastname}
}
}