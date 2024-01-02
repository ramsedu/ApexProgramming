//DateTime 
Datetime mydatetime = Datetime.newInstance(2023, 12, 21,15,30,50);
// Datetime myTodaydatetime = Date.today();
System.debug('mydatetime(GMT) = ' + mydatetime);
System.debug('mydatetime(IST) = ' + mydatetime.format());
System.debug('mydatetime(IST) fixed format= ' + mydatetime.format('yyyy-MM-dd hh:mm:ss a'));
System.debug('mydatetime(IST) fixed format= ' + mydatetime.format('yyyy-MM-dd HH:mm:ss'));
System.debug('mydatetime(IST) fixed format= ' + mydatetime.format('dd-MM-yy HH:mm'));
System.debug('mydatetime(IST) fixed format= ' + mydatetime.format('dd-MM-yyy'));
System.debug('mydatetime(IST) fixed format= ' + mydatetime.format('HH:mm:ss'));
System.debug('mydatetime(IST) Long = ' + mydatetime.formatLong());
System.debug('mydatetime(GMT) format = ' + mydatetime.formatGmt('EEE, MMM d yyyy HH:mm:ss'));

//System.TypeException: Invalid date/time: 10/14/2011, 11:46 AM
//Datetime dt = DateTime.parse('10/14/2011, 11:46 AM');
Datetime dt = DateTime.parse('14/10/2011, 11:46 am');
String myDtString = dt.format();
//system.assertEquals(myDtString, '14/10/2011, 11:45 AM');
Boolean iscorrectdateformat = (myDtString == '14/10/2011, 11:46 am');
system.debug('iscorrectdateformat = '+ iscorrectdateformat);
System.debug('myDtString = ' + myDtString);
//System.AssertException: Assertion Failed: Expected: 14/10/2011, 11:46 am, Actual: 10/14/2011, 11:46 AM
//System.AssertException: Assertion Failed: Expected: 14/10/2011, 11:46 am, Actual: 14/10/2011, 11:46 AM

//Datetime mydates = mydatetime.format('dd-MM-yyyy HH:mm:ss');
//MM - 01,02
//m - 1,2,10
// System.debug('myTodaydatetime = ' + myTodaydatetime);

//10,30,50 == IST, GMT+05:30
//05,00,50 == GMT, GMT+00:00
//28/01/2008, 4:30 pm
//21/12/2023, 10:30 am
//2023-12-21 05:00:50 // GMT fromat
//2023-12-21 10:30:50 // IST and Datetime format