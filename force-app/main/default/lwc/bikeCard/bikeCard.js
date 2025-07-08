import { LightningElement,api } from 'lwc';

    export default class RecordFormExample extends LightningElement {
        @api recordId="001J100000Sz6xHIAR" ; // Pass the record Id if editing an existing record
        @api formMode = 'readonly'; // Modes: 'view', 'edit', 'readonly'
    
        handleSuccess(event) {
            const updatedRecordId = event.detail.id;
            console.log('Record saved successfully: ' + updatedRecordId);
            // Add additional logic as needed
        }
    }