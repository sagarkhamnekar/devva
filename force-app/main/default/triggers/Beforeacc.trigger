trigger Beforeacc on Account (before insert,before update) {
   //before insert
    if(Trigger.Isbefore && Trigger.Isinsert){ 
        for(Account acc:Trigger.new){
             if(acc.AnnualRevenue == null){
                 acc.AnnualRevenue =100000;
                  system.debug('inserted successfully');
             }}}         
           //before update
           if(Trigger.isBefore&& Trigger.isUpdate){
        for(Account acc1:Trigger.new){        
            Account oldvalue= Trigger.oldmap.get(acc1.Id);
            if(acc1.name!=oldvalue.name){
                acc1.description='Account name changed ';
                 system.debug('updated successfully');
            }                

            }               
           }}