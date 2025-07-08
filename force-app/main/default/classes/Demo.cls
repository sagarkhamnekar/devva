public class Demo {
    public void demomethod(){
        map<integer,String> strmap1= new map<integer,String>();
        map<integer,String> strmap2=  new map<integer,String>();
        strmap1.put(1,'sagar');
        strmap1.put(2, 'sudhakar');
        strmap1.put(3,'sharath');
        strmap2.put(4,'onkar');
        strmap1.remove(2);
        system.debug('map names =>'+ strmap1);
        system.debug('Names in 2=>'+strmap2);
}
}