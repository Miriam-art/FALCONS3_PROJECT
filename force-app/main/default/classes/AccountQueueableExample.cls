public class AccountQueueableExample implements Queueable {
    
    public List<Account> accList = new List <Account> ();
    public AccountQueueableExample(List <Account> accList){
        this.accList  = accList;
    }
    // public AccountQueueableExample(){
    //     this.accList = [select id, name from Account];

    
    public void execute(QueueableContext qc){
        for(Account acc: accList){
            acc.Name = acc.Name + 'si';

        }
        update accList;
    }
}