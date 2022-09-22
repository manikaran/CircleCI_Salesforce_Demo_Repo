import { LightningElement } from 'lwc';
import getUtilityBarLinks from '@salesforce/apex/External_Links_Controller.getUtilityBarLinks'; 


export default class External_links_component extends LightningElement {

    linkList;

    connectedCallback() {
        getUtilityBarLinks.then(
            result => { this.linkList = result; }
        ).catch(
            err => { console.error('This is the Err:::'+ err); }
        );
    }
}