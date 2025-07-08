trigger updateacc on Account (before insert,before Update) {
    if(Trigger.isBefore&& Trigger.isUpdate){
        for(Account acc:Trigger.new){        
            Account oldvalue= Trigger.oldmap.get(acc.Id);
            if(acc.name!=oldvalue.name){
                acc.description='Account name changed ';
                 system.debug('updated successfully');
            }                
       }
}
}