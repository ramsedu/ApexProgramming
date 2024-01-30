public with sharing class AccountHandler {
    public String accountName { get; set; }
    public Integer accountBalance { get; set; }

    public AccountHandler() {

    }

    public void displayInfo() {
        System.debug('Account Name: ' + accountName + ', Balance: ' + accountBalance);
    }

}