public class AccHandler {
    
    public static void updateAcc(List<Account> newList)
    {
     system.debug('newList'+newList);
        system.debug('Trigger called for before insert');
        for(Account acc:newList){
            system.debug('Industry'+acc.industry);
            if(acc.industry != null){
                acc.AccountNumber='5678';
                
            }else{
                acc.AccountNumber='0000';
            }
        }
    }
    
	public static void createRelatedContact(List<Account>newAccList)
    {
        system.debug('Trigger called for After insert');
    }
    }