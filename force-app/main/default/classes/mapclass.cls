public class mapclass {

    public static void mapping (){
        Map<string,string> person =new Map<string,string>();
        
       	 person.put('name','sagar');
         person.put('profile','developer');
         person.put('adress','Ambali');
        person.put('age','24');
       
        system.debug(person.keyset());// for if want key values only set data type
		system.debug(person.values());     //for if want values only data  type is list.... 
        system.debug(person.size());
        
        
         person.put('name','prasik');
       string name= person.get('name');
        
      		  person.put('profile','tester');
       string profile =person.get('profile');  
       system.debug(profile);
        
         Map<string,string> otherperson =new Map<string,string>();
        otherperson.putAll(person);
        system.debug(otherperson);//by reffernce...
        
    }
}