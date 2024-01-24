public class ApexDemoVS {

    public ApexDemoVS() {
        system.debug('Default Constractor');
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
}