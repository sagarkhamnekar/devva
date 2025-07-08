public class setclass {

    
    public static void setclas(){
    
        Set<string> fts1= new Set<string>{
        'mango','banana','grapes','orange'};
    	//system.debug(fts);
    
            Set<string> fts2= new Set<string>{
        'banana','grapes','orange'};
    	//system.debug(fts2); 'banana','grapes','orange' show....available in list will (same)show
          //  fts1.retainAll(fts2);mango show...qnique will show...
        fts1.removeAll(fts2);
        
         system.debug(fts1);
        }
}