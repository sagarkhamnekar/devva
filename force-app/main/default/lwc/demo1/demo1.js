import { LightningElement } from 'lwc';

export default class Demo1 extends LightningElement {


    firstname = 'John';
    lastname = 'Doe';

    // Getter to compute fullName dynamically
    get fullName() {
        return this.fullName;
    }
}