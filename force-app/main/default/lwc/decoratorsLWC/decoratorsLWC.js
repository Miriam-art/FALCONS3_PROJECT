import { LightningElement,track} from 'lwc';

export default class DecoratorsLWC extends LightningElement {
message  = 'This is default message';
 @track contact = {
    "FirstName": ' John',
    "LastName": 'Travolta'
};
handleClick(){
    this.message = this.message + '1234';
    this.contact.FirstName = this.contact.FirstName+ ' John';
    this.contact.LastName = this.contact.LastName+ ' Travolta';
}
get FullName(){
    return this.contact.FirstName + this.contact.LastName;
}

}