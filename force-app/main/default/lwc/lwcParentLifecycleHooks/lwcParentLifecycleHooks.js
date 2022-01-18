import { LightningElement } from 'lwc';

export default class LwcParentLifecycleHooks extends LightningElement {
showChild = true;
 constructor() {
        super();
        let childComponent = this.template.querySelector('c-lwc-lifecycle-hooks');
        console.log('Parent constructor() - childComponent line 8: ',childComponent);
    }

   connectedCallback(){
        let childComponent = this.template.querySelector('c-lwc-lifecycle-hooks');
        console.log('Parent connectedCallback() - childComponent line 13: ',childComponent);
   }
renderedCallback(){
    let childComponent = this.template.querySelector('c-lwc-lifecycle-hooks');
        console.log('Parent renderedCallback() - childComponent line 17: ',childComponent);
    }

     handleShowHideChild(event) {
        this.showChild = event.detail.checked;
        //when user checks the box => event.detail.checked == true
        //when user unchecks the box => event.detail.checked == false

    }
 errorCallback(error, stack) {
        console.log('ErrorCallback error (stringify and then parsed): ', JSON.parse(JSON.stringify(error)));
        console.log('ErrorCallback error: ', error);
        console.log('Error stack: ', stack);
    }

}