//outer class
//allowed access midifier: public , global
public class SampleClass{
    /*public means it is accessible by all other classes (or outside of the class) withing the same namespace.*/
    public string sampleStr = 'This is aclass variable.';
    /*private means it is accessible by that class only inside the class body.*/
    private string sampleStrPrivate = ' This is private class variable';
    //global variable it is open any for app
    //global string sampleStrGlobal = 'This is GLobal';
    protected String sampleStrProtected = 'protected string';
    public static string staticString = 'this is a public static string';
    // Here creating parameterless Constructor
    public SampleClass(){
        System.debug('Debugging from constructor ');
        system.debug('from constructor sampleStr = ' + sampleStr);
    }

    //Here creating Parameterized Contructor
    public SampleClass(String defaultPrint){
        System.debug(defaultPrint);
        sampleStr = defaultPrint;
    }

    public void sampleMethod(){
        System.debug(sampleStrPrivate); //private variable
        System.debug(sampleStr); //public variable
    }

    //parameterized method
    public void printIt(string printString){
        System.debug('print string is' + printString);
    }

    //allowed access modifires: public / private / global
    private class SamplePriInnerClass{
        public void method1(){
        SampleClass s = new SampleClass();
        system.debug(s.sampleStr);
        system.debug(s.sampleStrProtected);
        system.debug(s.sampleStrPrivate);
        }
    }
    public class SampleInnerClass{
        public void method3(){
            system.debug('sample inner class ');
        }
    }
}