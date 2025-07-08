public class Aggrigationsoql {
    public static void mymethod(){
    Account acc=[
        SELECT Id,Name,NumberOfEmployees,AnnualRevenue,Rating FROM Account
        LIMIT 1];
        
        System.debug(acc);
    
    
        AggregateResult result =[SELECT COUNT(Rating)showme FROM ACCOUNT];
         system.debug(result);     
        system.debug(result.get('showme'));
        
    }

}