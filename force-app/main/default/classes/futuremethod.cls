public class futuremethod {

    public  futuremethod(){
        System.debug('im in method examples');
       // method1();
        //method2();
        //method3();
        method4(77,'sagar');
       // method5();
    }    
    public void method1(){
    System.debug('im in method 1');
            
}
    public void method2(){
    System.debug('im in method 2');
    }
    public void method3(){
    System.debug('im in method 3');
        
}
    @future
    public static void method4(integer i,String s){
    System.debug('im in method 4');
        System.debug('i=='+i);
        system.debug('s=='+s);
}
    @future
    public static void method5(){
    System.debug('im in method 5');
}
}