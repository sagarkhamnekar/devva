public class mymap {
    public static void mymethod(){ 
   // Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id,Name,Rating FROM Account]);
	
        List<Account> acclist=[SELECT Id,Name,Rating FROM Account]; 

        List<Contact> conList=[SELECT Name,AccountId FROM Contact];
        
        //for(Contact con : conList){    by using map...
        //System.debug(con.Name + '------------------------->>' + accMap.get(con.AccountId).Name);
        //}
        
        //using loop
        for(Account acc:acclist){
        for(Contact con:conList){
            if(con.AccountId==acc.ID){
                System.debug(con.Name +'---------------------->>' +acc.Name);
            
            
        }
    }
        } }}