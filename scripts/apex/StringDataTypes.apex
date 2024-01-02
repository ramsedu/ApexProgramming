String Name = 'Kumar';
String num = '100';
Integer num = 200;
//csv file

//Name,Age,Salary,Dob
//Kumar,25,5000,12-12-2023
//Anand,25,5000,12-12-2023

String records= 'Anandkumar Selvam,25,5000,12-12-2023';
String name = records.substring(0,5);
System.debug('Name = ' + name);
String name1 = records.substringBefore(',');
System.debug('Name = ' + name1);
String name2 = records.substringAfter(',');
System.debug('Name = ' + name2);

String[] allcols = records.split(',');
System.debug(allcols); 
//(Anandkumar Selvam, 25, 5000, 12-12-2023)
// 0, 1, 2, 3
//String[] or List<String>

String empName;
Integer age,Sal;
Date dob;

Integer pos = 0;
for(String str : allcols) {
    if(pos == 0){
        empName = str;
    }   
    else if(pos == 1){
        age = Integer.valueOf(str);
    }
    else if(pos == 2) {
        sal = Integer.valueOf(str);
    }
   else if(pos == 3)
   {
        String[] mydate = str.split('-');
        System.debug(mydate);
        Integer dd = Integer.valueOf(mydate[0]);
        Integer MM = Integer.valueOf(mydate[1]);
        Integer yy = Integer.valueOf(mydate[2]);
        dob = date.newInstance(yy, MM, dd);
   }
        
       // dob = Date.valueOf(str);
    pos++; // pos = pos + 1;
}

    System.debug('Name = ' + empName);
    System.debug('Age = ' + age);
    System.debug('Sal = ' + sal);
    System.debug('DOB = ' + dob);


/*Integer[] myInts = new Integer[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

for (Integer i : myInts) {
    System.debug(i);
} */


Apex script unhandled exception by user/organization: 005Ek000002HZMn/00DEk0000003SSn
Source organization: 00Df4000000nCJh (null)
Failed to process batch for class 'RedesignNL_AssetConfigUpdate' for job id '707Ek00000J1csO'

caused by: System.LimitException: Too many callouts: 101

Class.RedesignNL_AssetConfigUpdate.execute: line 64, column 1