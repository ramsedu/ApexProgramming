// Child to Parent upto 5 level parent record data access via . dot notation.
//SOQL 
SELECT  Account.Name,
        Account.AccountNumber,
        account.AnnualRevenue,
        account.BillingAddress,
        Name,
        Amount,
        Closedate
FROM Opportunity

//Apex

List<Opportunity> listOpps = [SELECT  Account.Name, Account.Owner.Name, Parent_Account__r.Name,
        Account.Owner.CreatedBy.Name,
        Account.AccountNumber,
        account.AnnualRevenue,
        account.BillingAddress,
        Name,
        Amount,
        Closedate
FROM Opportunity];

for(Opportunity opp :listOpps ){
    System.debug('Account Name:' + opp.Account.Name);
    System.debug('Account Owner Name:' + opp.Account.Owner.Name);
    System.debug('Parent Account Name:' + opp.Parent_Account__r.Name);
    System.debug('Account Owner CreatedByName:' + opp.Account.Owner.CreatedBy.Name);
    System.debug('Opportunity Name:' + opp.Name);
    System.debug('Opportunity Amount:' + opp.Amount );
    System.debug('Opportunity Number:' + opp.Closedate);

}

//(SELECT Name, Amount, Closedate FROM ParentAccountOpportunities__r )
List<Account> listAccounts = [SELECT Name, AccountNumber, AnnualRevenue,
                                (SELECT Name, Amount, Closedate FROM Opportunities
                                ORDER BY Amount DESC )
                                FROM Account
                                Limit 5];

Boolean isOppFound = true;

for(Account ac :listAccounts ){
    
    if (isOppFound) {
        System.Debug('===============================');
        System.Debug('Account Details');
        System.Debug('===============================');
    }
    
    System.debug('Account Name:' + ac.Name);
    System.debug('Account Number:' + ac.AccountNumber);
    System.debug('Account AnnualRevenue:' + ac.AnnualRevenue);
    
    if(ac.Opportunities.size() > 0)
    {
        isOppFound = true;
        System.Debug('===============================');
        System.Debug('Opportunities Details');
        System.Debug('===============================');
    }
    else {
        isOppFound = false;
    }
   
    for(Opportunity opp : ac.Opportunities) {
        System.debug('Opportunity Name:' + opp.Name);
        System.debug('Opportunity Amount:' + opp.Amount );
        System.debug('Opportunity CloseDate:' + opp.Closedate);
    }
}


List<Account> listAccounts2 = [SELECT Name, AccountNumber, AnnualRevenue,
                                (SELECT Name, Amount, Closedate FROM ParentAccountOpportunities__r )
                                FROM Account];

Boolean isOppFound = true;

for(Account ac :listAccounts2 ){
    
    if (isOppFound) {
        System.Debug('===============================');
        System.Debug('Account Details');
        System.Debug('===============================');
    }
    
    System.debug('Account Name:' + ac.Name);
    System.debug('Account Number:' + ac.AccountNumber);
    System.debug('Account AnnualRevenue:' + ac.AnnualRevenue);
    
    if(ac.ParentAccountOpportunities__r.size() > 0)
    {
        isOppFound = true;
        System.Debug('===============================');
        System.Debug('Opportunities Details');
        System.Debug('===============================');
    }
    else {
        isOppFound = false;
    }
   
    for(Opportunity opp : ac.ParentAccountOpportunities__r) {
        System.debug('Opportunity Name:' + opp.Name);
        System.debug('Opportunity Amount:' + opp.Amount );
        System.debug('Opportunity CloseDate:' + opp.Closedate);
    }
}