trigger AccountTriigger on Account (before insert,after insert) {
    system.debug('trigger called'+Trigger.new);
    if (Trigger.isInsert){
        if(Trigger.isBefore)
        {
    AccHandler.updateAcc(Trigger.new);
        }
        else if(Trigger.isAfter){
    AccHandler.createRelatedContact(Trigger.new);
        }}}