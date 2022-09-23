public class DemoStaticNonStatic {    
    /*Variables can be Static or Non-Static*/
    public String nonStaticString = 'This is a Non-Static String';
    public static String staticString = 'This is a Static String';    
    /*Methods can be Static or Non-Static*/
    public static void staticMethod(){
        system.debug('This is a Static Method');
    }
    public void nonStaticMethod(){
        system.debug('This is a Non-Static Method');
    }
    public void  demoStaticNonStatic1() {
        /*Static Variables or Methods are called directly with ClassName*/
        String printStaticString = demoStaticNonStatic.staticString;//call a static variable
        System.debug('Print Static String: '+printStaticString);
        demoStaticNonStatic.staticMethod();//call a static method
        /*Non-Static Methods are called via Object*/
        demoStaticNonStatic demo = new demoStaticNonStatic();
        String printNonStaticString = demo.nonStaticString;//call a non-static variable
        System.debug('Print Non-Static String: '+printNonStaticString);
        demo.nonStaticMethod();//call a non-static method
        
        }
}