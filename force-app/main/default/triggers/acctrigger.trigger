trigger acctrigger on Contact (before insert) {
    Set<Id> accountIds = new Set<Id>();
    for (Contact c : Trigger.new) {
        if (c.AccountId != null) {
            accountIds.add(c.AccountId);
        }
    }

    Map<Id, Account> accountMap = new Map<Id, Account>([
        SELECT Id, Industry
        FROM Account
        WHERE Id IN :accountIds
    ]);

    for (Contact c : Trigger.new) {
        if (c.AccountId != null && accountMap.containsKey(c.AccountId)) {
            c.Industry__c = accountMap.get(c.AccountId).Industry;
        }
    }
}