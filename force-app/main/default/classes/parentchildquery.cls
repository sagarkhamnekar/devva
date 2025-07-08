public class parentchildquery {
    
    public static void mymethod(){

        List<Account> acc=new List<Account>();
        acc=[SELECT NAME,AnnualRevenue,(Select Name,Email From Contacts),(Select Name From Opportunities) FROM ACCOUNT];
        System.debug(acc);
        
        for(Account abb:acc){
            System.debug(abb);
            
            for(Contact con:abb.Contacts){
                 System.debug(con);
            }
            
            for(Opportunity opp:abb.Opportunities){
                 System.debug(opp);
            }
            system.debug('---------------------------------->');
            }
          
    }}