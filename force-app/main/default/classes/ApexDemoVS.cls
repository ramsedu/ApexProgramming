public class ApexDemoVS {

    public String accountName;
    public static String  accountName2;

    public ApexDemoVS() {
        system.debug('Default Constractor');
        accountName2 = 'First Static Account';
        this.accountName = 'First Instance Account';
    }

    public ApexDemoVS(String accountName) {
        system.debug('one parameter Constractor');
        accountName2 = 'Second Static Account';
        this.accountName = 'Second Instance Account';
        // this.accountName = accountName;
        //accountName2 = 'Second Account';
    }

    public ApexDemoVS(String accountName, String contactName) {
        system.debug('two parameter Constractor');
        this.accountName = accountName;
    }

    public List<String> getAccountName(){

        List<String> acnames = new List<String>();
        list<Account> acs = [SELECT Name
                        FROM Account
                        LIMIT 10];
       for(Account ac : acs){
        acnames.add(ac.Name);
       }
       return acnames;
        
    }

    //Get Contact based on Single Account name
    public List<String> getContactName(String accountName){ //accountName = 'United Oil & Gas Corp.'
        System.debug('Single Account name');
        List<String> acnames = new List<String>();
        List<Contact> listconts = [SELECT name FROM Contact WHERE Account.Name= :accountName];
        //SELECT name FROM Contact WHERE Account.Name= 'United Oil & Gas Corp.'
        System.debug('Static Account Name:' + accountName2);
        for(Contact ct : listconts){
        acnames.add(ct.Name);
       }
       return acnames;
    }
    
    public List<String> getContactName(List<String> accountName){ 
        System.debug('Bulk using List');
        List<String> acnames = new List<String>();
        List<Contact> listconts = [SELECT name FROM Contact WHERE Account.Name IN :accountName];
        //SELECT name FROM Contact WHERE Account.Name= 'United Oil & Gas Corp.'
        
        for(Contact ct : listconts){
        acnames.add(ct.Name);
       }
       return acnames;
    }

    public static List<String> getContactNames(List<String> accountName){ 
        System.debug('Bulk using List');
        List<String> acnames = new List<String>();
        List<Contact> listconts = [SELECT name FROM Contact WHERE Account.Name IN :accountName];
        //SELECT name FROM Contact WHERE Account.Name= 'United Oil & Gas Corp.'
        
        for(Contact ct : listconts){
        acnames.add(ct.Name);
       }
       return acnames;
    }


    public Contact getContact(String accountName){ //accountName = 'United Oil & Gas Corp.'
    System.debug('Single Contact Records');
    System.debug('Static Account Name:' + accountName2);
    Contact cont = [SELECT Name, Account.Name, Phone, Email 
                      FROM Contact 
                     WHERE Account.Name= :accountName
                     LIMIT 1];
    return cont;
}

public Contact getContact(){
    System.debug('Static Account Name:' + accountName2);
    Contact cont = [SELECT Name, Account.Name, Phone, Email 
                      FROM Contact 
                     WHERE Account.Name= :accountName
                     LIMIT 1];
    return cont;
}

}