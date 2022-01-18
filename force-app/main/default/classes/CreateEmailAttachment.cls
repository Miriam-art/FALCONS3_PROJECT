public inherited sharing class CreateEmailAttachment {
    
    public static string SendAttachment(String sEmailAddress, String AccountId){

        String sMessage='';
        try{            
            Messaging.SingleEmailMessage semail = new Messaging.SingleEmailMessage();
            Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
            // Replace Visualforce(AccountDetails) page with your visualforce page
            PageReference pref = page.AccountDetails;
            pref.getParameters().put('id',AccountId);
            pref.setRedirect(true);
            Blob b = pref.getContent();
            attach.setFileName('Account Details.pdf');
            attach.setBody(b);
            semail.setSubject('Account Details');
            semail.setToAddresses(new List<String>{sEmailAddress});
            semail.setPlainTextBody('Please find the attached Account details');
            semail.setFileAttachments(new Messaging.EmailFileAttachment[]{attach});
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{semail});
            sMessage='SUCCESS';
        }
        catch(Exception ex){
            sMessage=ex.getMessage()+'\n'+ex.getLineNumber()+'\n'+ex.getCause();
        }
        return sMessage;

    }
}