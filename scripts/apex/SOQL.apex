//SOQL
SELECT Id, Name, Phone, Active__c, AnnualRevenue
  FROM Account
  WHERE Name LIKE '%E'
  ORDER BY Active__c DESC NULLS FIRST
  LIMIT 50 


List<AggregateResult> listOppgrp = [SELECT  Account,
                                            min(name) minname,
                                            AVG(Amount) avgamt, 
                                            Sum(Amount) sumamt , 
                                            MIN(amount) minamt,
                                            COUNT(amount) countamt, 
                                            max(amount),
                                            max(CloseDate)
                                    FROM Opportunity];
System.debug(listOppgrp);
//{expr0=185806.4516129032, expr1=5760000.0, expr2=31, expr3=15000.00, expr4=915000.00, expr5=Thu Dec 07 00:00:00 GMT 2023, expr6=Burlington Textiles Weaving Plant Generator})
// {expr0=Burlington Textiles Weaving Plant Generator, avgamt=185806.4516129032, expr1=5760000.0, expr2=15000.00, expr3=31, expr4=915000.00, expr5=Thu Dec 07 00:00:00 GMT 2023})
for(AggregateResult ar : listOppgrp){

  Decimal avg = (Decimal)ar.get('avgamt');
  //Illegal assignment from Object to Integer
  // Integer sum = ar.get('sumamt');
  Decimal sum =  (Decimal)ar.get('sumamt');
  Integer cnt = (Integer)ar.get('countamt');
  // System.debug('Avg Amount: ' + ar.get('expr0')); //ar.get('CampaignId')
  System.debug('sum Amount: ' + ar.get('sumamt'));
  System.debug('count Amount: ' + ar.get('countamt'));
  System.debug('min Amount: ' + ar.get('minamt'));
  System.debug('max Amount: ' + ar.get('expr0'));
  System.debug('max CloseDate: ' + ar.get('expr1'));
  System.debug('min Name: ' + ar.get('minname'));
}


List<AggregateResult> listOppgrp1 =[
SELECT  Account.name,CloseDate,
                                            min(name) minname,
                                            AVG(Amount) avgamt, 
                                            Sum(Amount) sumamt , 
                                            MIN(amount) minamt,
                                            COUNT(amount) countamt, 
                                            max(amount)
                                    FROM Opportunity
Group By Account.Name, CloseDate
Order by  Account.Name];
System.debug(listOppgrp1);

//{Name=Burlington Textiles Corp of America, CloseDate=Sat Oct 07 00:00:00 GMT 2023, minname=Burlington Textiles Weaving Plant Generator, avgamt=235000.0, sumamt=235000.0, minamt=235000.00, countamt=1, expr0=235000.00}, AggregateResult:{Name=Dickenson plc, CloseDate=Sat Oct 14 00:00:00 GMT 2023, minname=Dickenson Mobile Generators, avgamt=15000.0, sumamt=15000.0, minamt=15000.00, countamt=1, expr0=15000.00}, AggregateResult:{Name=Edge Communications, CloseDate=Fri Aug 18 00:00:00 GMT 2023, minname=Edge SLA, avgamt=60000.0, sumamt=60000.0, minamt=60000.00, countamt=1, expr0=60000.00}, AggregateResult:{Name=Edge Communications, CloseDate=Thu Dec 07 00:00:00 GMT 2023, minname=Edge Emergency Generator, avgamt=35000.0, sumamt=35000.0, minamt=35000.00, countamt=1, expr0=35000.00}, AggregateResult:{Name=Edge Communications, CloseDate=Wed Jan 31 00:00:00 GMT 2024, minname=Edge Emergency Generator, avgamt=62500.0, sumamt=125000.0, minamt=50000.00, countamt=2, expr0=75000.00}, AggregateResult:{Name=Express Logistics and Transport, CloseDate=Sat Aug 26 00:00:00 GMT 2023, minname=Express Logistics Portable Truck Generators, avgamt=80000.0, sumamt=80000.0, minamt=80000.00, countamt=1, expr0=80000.00}, AggregateResult:{Name=Express Logistics and Transport, CloseDate=Sun Aug 27 00:00:00 GMT 2023, minname=Express Logistics SLA, avgamt=120000.0, sumamt=120000.0, minamt=120000.00, countamt=1, expr0=120000.00}, AggregateResult:{Name=Express Logistics and Transport, CloseDate=Mon Aug 28 00:00:00 GMT 2023, minname=Express Logistics Standby Generator, avgamt=220000.0, sumamt=220000.0, minamt=220000.00, countamt=1, expr0=220000.00}, AggregateResult:{Name=GenePoint, CloseDate=Thu Oct 05 00:00:00 GMT 2023, minname=GenePoint Standby Generator, avgamt=85000.0, sumamt=85000.0, minamt=85000.00, countamt=1, expr0=85000.00}, AggregateResult:{Name=GenePoint, CloseDate=Sat Nov 25 00:00:00 GMT 2023, minname=GenePoint Lab Generators, avgamt=60000.0, sumamt=60000.0, minamt=60000.00, countamt=1, expr0=60000.00}, ...)
String s1 = String.valueof('dsdd');