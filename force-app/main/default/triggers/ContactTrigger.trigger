trigger ContactTrigger on Contact (before insert,after insert) {
    if(Trigger.isInsert)
    {
  		 system.debug('is in insert scenario');
       
        if(Trigger.isbefore)
        {
            system.debug('is in Before scenario'); 
        }
        
        else{
             system.debug('is in After scenario');
        }
    }

}