public class databasesoql {
    
    public static void mymethod(){
       
        LIST<Account> acc=[SELECT NAME,RATING,ANNUALREVENUE FROM ACCOUNT where ANNUALREVENUE !=100000 and NumberOfEmployees>10000];
       system.debug(acc);   
        system.debug(acc.size());        
        //List<Account> tempo=new List<Account>();
        for (Account acclist:acc){
          //  if(acclist.AnnualRevenue>1000000){
                system.debug(acclist); 
      
        }}}
         /*       tempo.add(acclist);
           
             }
        	system.debug(tempo);
    
        system.debug(tempo.size());*/