@isTest
private class AccountTest {
    
    @isTest
    static void testBeforeInsertIndustry() {
        Account acc = new Account(Name='Test Insert', Industry=null);
        insert acc;

        Account result = [SELECT Industry FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Technology', result.Industry);
    }
    
    @isTest
    static void testAfterUpdateIndustry() {
        Account acc = new Account(Name='Test Update', Industry='Finance');
        insert acc;

        // Update to clear Industry to null and trigger after update logic
        acc.Industry = null;
        update acc;

        Account result = [SELECT Industry FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Technology', result.Industry);
    }
}