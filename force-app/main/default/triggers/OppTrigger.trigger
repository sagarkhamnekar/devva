trigger OppTrigger on Opportunity (before insert) {
    handlerclass.updateDesc(Trigger.new);

}