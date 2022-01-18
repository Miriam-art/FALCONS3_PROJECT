import { LightningElement,wire } from 'lwc';
import getAccounts from   '@salesforce/apex/AccountControllerForLWCWire.getAccounts';
export default class LwcWire extends LightningElement {
@wire(getAccounts)
accounts;
//accounts.data => success in calling Apex; error = null
//accounts.error = > failure in calling Apex; data = null

}