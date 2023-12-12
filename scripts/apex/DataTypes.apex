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