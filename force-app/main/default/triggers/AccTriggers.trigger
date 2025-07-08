trigger AccTriggers on Account (after insert,before update) {
    
    if(Trigger.isAfter && Trigger.isInsert){}
    List<Opportunity> opplist =new List<Opportunity>();
    for(Account acc : Trigger.new){
        Opportunity opp =new Opportunity();
        opp.Name=acc.Name;
        opp.AccountId=acc.Id;
        opp.Closedate = acc.SLAExpirationDate__c;
        opp.StageName='Prospecting';
        opplist.add(opp);
        if(opplist.size()>0){
            insert opplist;
       }
        
        
            
    }
    
    if(Trigger.isBefore && Trigger.isupdate){
        system.debug('new value');
        system.debug('Trigger.new');
        system.debug('Trigger.newMap');//id with new value
        
        system.debug('old value');
        system.debug('Trigger.old');
        system.debug('Trigger.oldMap');//id ,witholdvalue
        
        for(Account acc: Trigger.new){
            Account accId =Trigger.oldMap.get(acc.Id);
            if(acc.Name!=accId.Name){
                acc.addError('Account name once created can not modifyAccount Name again');
            }
        }
        
    }
}