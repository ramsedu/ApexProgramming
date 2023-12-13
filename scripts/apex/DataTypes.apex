//Primitive Data Types
//Boolean, Date, DateTime, Time, String, Integer,Decimal,Long ID ,Double,Object,Blob

//Date
Date myJoiningDate = Date.newInstance(2023, 12, 14);
System.debug('My Joining Date is ' + myJoiningDate ); //2023-12-14
Date myjoiningDate2 = Date.newInstance(2023, 2, 32); //Overflow with carryfoard a month 
System.debug('My Joining Date is ' + myjoiningDate2 ); //2023-03-04
//<<Access>> <<static>> <<Return DataType>>

myJoiningDate = Date.newInstance(2023, 12, 32); //Overflow with carryfoard a month 
System.debug('My Joining Date is ' + myJoiningDate ); //2024-01-01

Date myToday = date.today();
System.debug('My Today Date is ' + myToday ); //2023-12-12
date myduedate = myToday.addYears(1);
System.debug('My Due Date is ' + myduedate ); //2024-12-12
System.debug('My Today Date is ' + myToday.dayOfYear() );// 346
/* 30 -28= 2
1-12
1-31 -1,3,5..
1,30
1,29
1,28 */


Date mypolicystartDate = System.today();
Date mypolicyEndDate = System.today().addYears(1).addDays(-1);
System.debug('My Policy Start Date is ' + mypolicystartDate );
System.debug('My Policy End Date is ' + mypolicyEndDate );
Integer noOfDays = mypolicyEndDate.daysBetween(mypolicystartDate);
System.debug('No Of Days = ' + noOfDays);

//28 Days Recharge
Date myRechargeDate = Date.newInstance(2023, 12, 01);
Date myexpireDate   = myRechargeDate.addDays(28);
Integer reminingDays = System.today().daysBetween(myexpireDate);
System.debug('My Recharge Date is ' + myRechargeDate);
System.debug('My Expire Date is ' + myexpireDate);
System.debug('No Of Days is ' + reminingDays);

//locale Date format
Date mytodaydate = System.today();
String mylocaldate = mytodaydate.format();
System.debug('My Today Date is ' + mytodaydate);
System.debug('My Today locale Date is ' + mylocaldate);
//mytodaydate.compareTo(arg0);


//x(GMT+05:30) India Standard Time (Asia/Kolkata)|GMT+05:30
//My Today locale Date is 13/12/2023 for India
//My Today locale Date is 12/13/2023 for US

//(GMT-08:00) Pacific Standard Time (America/Tijuana)|GMT-08:00
//My Today locale Date is 12/12/2023
//My Today Date is 2023-12-12 00:00:00

//Is 2023 a Leap Year? false
date Date3 = date.newInstance(2024, 12, 01);
Boolean isLeapyear = Date.isLeapYear(Date3.year());
System.debug('Is ' + Date3.year() + ' a Leap Year? ' + isLeapyear);

/* employee Sandeep = new employee();
Sandeep.empName = 'Sandeep';
Sandeep.empSal = 20000;
Sandeep.Salary();
employee kumar = new employee();
kumar.empName = 'kumar';
kumar.empSal = 30000;
kumar.Salary();

employee.compsal = 100000;
employee.Salary();
 */

//It is work based on locales
date mydate = date.parse('27/12/2009');
System.debug('Parse Date is ' + mydate);
System.debug('Parse locales Date is ' + mydate.format());
