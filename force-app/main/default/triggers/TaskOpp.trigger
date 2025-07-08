trigger TaskOpp on Opportunity (before insert,before update) {
    
     if(Trigger.isbefore && Trigger.isupdate){
       
         for(Opportunity opp:trigger.new){
        
            opportunity oldOpp=trigger.oldMap.get(opp.Id);
          
            Boolean oldOppIsWon = oldOpp.stageName.equals('Closed won');
       
            Boolean newOppisWon=opp.stageName.equals('closed won');

        if(!oldOppIsWon && newOppisWon)
        {
            opp.IsValueCorrect__c= true;
        }
    }
   }

 

}