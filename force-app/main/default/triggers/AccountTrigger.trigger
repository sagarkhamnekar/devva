trigger AccountTrigger on Account (before insert, after update) {

    // Before Insert: set Industry if blank
    if (Trigger.isBefore && Trigger.isInsert) {
        for (Account acc : Trigger.new) {
            if (acc.Industry == null) {
                acc.Industry = 'Technology';
            }
        }
    }

    // After Update: set Industry if blank via update
    if (Trigger.isAfter && Trigger.isUpdate) {
       
        List<Account> accountsToUpdate = new List<Account>();
        for (Account acc : Trigger.new) {
            
            Account oldAcc = Trigger.oldMap.get(acc.Id);
            // Only update if Industry is null now but was NOT null before (optional check)
            if (acc.Industry == null && oldAcc.Industry != null) {
                accountsToUpdate.add(new Account(Id = acc.Id, Industry = 'Technology'));
            }
        }
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;
        }
    }
}