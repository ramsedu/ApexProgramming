ApexDemoVS vs = new ApexDemoVS();
Contact cn = vs.getContact('United Oil & Gas Corp.');
System.debug('Account name as Pass parameter: ' + vs.accountName);
System.debug('Account Name : '+ cn.Name);
System.debug('Contact Name : '+ cn.Account.Name);
System.debug('Contact Phone : '+ cn.Phone);
System.debug('Contact Email : '+ cn.Email);
System.debug('Static Account : ' + ApexDemoVS.accountName2);

ApexDemoVS vs2 = new ApexDemoVS('United Oil & Gas Corp.');
Contact cn2 = vs2.getContact();
System.debug('Account name as Pass parameter: ' + vs2.accountName);
System.debug('Account Name : '+ cn2.Name);
System.debug('Contact Name : '+ cn2.Account.Name);
System.debug('Contact Phone : '+ cn2.Phone);
System.debug('Contact Email : '+ cn2.Email);

System.debug('Static Account : ' + ApexDemoVS.accountName2);

ApexDemoVS vs = new ApexDemoVS();
System.debug('Static1 Account : ' + ApexDemoVS.accountName2);
ApexDemoVS vs2 = new ApexDemoVS('United Oil & Gas Corp.');

System.debug('Instance1 Account : ' + vs.accountName);
System.debug('Instance2 Account : ' + vs2.accountName);
System.debug('Static2 Account : ' + ApexDemoVS.accountName2);