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
}