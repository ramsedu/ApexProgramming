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

//Time Data Type
Time mytime = Time.newInstance(9, 35, 45, 50);
System.debug('My time is '+ mytime);
Time elsecateTime = mytime.addHours(4);
System.debug('My Eslcate Time is '+ elsecateTime);
Time elsecateTime2 = mytime.addHours(25);//1 to 24, 25-24 = 1
System.debug('My Eslcate Time is '+ elsecateTime2);

Time minTime = mytime.addMinutes(90);//0-59,30
System.debug('add 90 mins in Time is '+ minTime);//11.05, 10.55, 10.05, 00:00:00 to 23:59:59

Time miillsecTime = mytime.addMilliseconds(90);
System.debug('add 90 Milliseconds in Time is '+ miillsecTime);

Time secondsTime = mytime.addSeconds(620);
System.debug('add 620 Milliseconds in Time is '+ secondsTime);//09:46:05.050Z //45+20 = 65,1m, 5s
System.debug('my hour is ' + secondsTime.hour());
System.debug('my minute is ' + secondsTime.minute());
System.debug('my second is ' + secondsTime.second());
System.debug('my millisecond is ' + secondsTime.millisecond());


//DateTime
Datetime mycurrentdatetime = Datetime.now();
System.debug('My current time is ' + mycurrentdatetime);

Datetime mycurrentdatetime1 = Datetime.newInstance(2023, 12, 14, 11, 10, 30);
System.debug('My current time (1 hours ahead) GMT   is ' + mycurrentdatetime1);//11:10, 16:44:10, 6:10:30, 5:40:30
System.debug('My current time (1 hours ahead) local is ' + mycurrentdatetime1.format());


//Home work
// Input 
//Start Date: 14-12-2023
//End Date : 25-04-2024

//Output
14-12-2023 // 1+4 = 5, 14+5 = 19
19-12-2023 // 1+9 = 10, 19+10 = 29
29-12-2023 // 2+9=11, 29+11 = 40, 40-31= 9
09-01-2024 //
.............
25-04-2024

