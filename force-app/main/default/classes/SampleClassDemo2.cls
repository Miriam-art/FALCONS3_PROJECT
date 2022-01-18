public class SampleClassDemo2{
    /*public means it is accessible by all other classes (or outside of the class) withing the same namespace.*/
    public string sampleStr = 'This is aclass variable.';
    /*private means it is accessible by that class only inside the class body.*/
    private string sampleStrPrivate = ' This is private class variable';
    protected String sampleStrProtected = 'protected string';
    public static string staticString = 'this is a public static string';
    public SampleClassDemo2(){
        system.debug('a constructor ');
    }

    public void printIt(){
        system.debug('sampleStr ' + sampleStr);
        System.debug(staticString);
    }
}