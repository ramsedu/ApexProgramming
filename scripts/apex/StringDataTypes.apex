/* String Name = 'Kumar';
String num = '100';
Integer num = 200; */
//csv file

//Name,Age,Salary,Dob
//Kumar,25,5000,12-12-2023
//Anand,25,5000,12-12-2023

String records= 'Anandkumar Selvam,25,5000,12-12-2023,Senior Engineer';
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
/*     if(pos == 0 || pos == 1  ){
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
   } */

   //Switch Statements
   
   switch on pos {
   when 0 {
       empName = str;
   }
   when 1 {
        age = Integer.valueOf(str);
   }
   when 2 {
       sal = Integer.valueOf(str);
   }
   when 3 {
       String[] mydate = str.split('-');
        System.debug(mydate);
        Integer dd = Integer.valueOf(mydate[0]);
        Integer MM = Integer.valueOf(mydate[1]);
        Integer yy = Integer.valueOf(mydate[2]);
        dob = date.newInstance(yy, MM, dd);
   }
   when else {
       System.debug('default');
   }

    }

    switch on (pos + pos) {
        when 1 {
            System.debug('True = ' + str);
        }
        when 2 {
            System.debug('false = ' + str);
        }
        when else {
       System.debug('default');
   }

}
if ((pos + pos) == ((pos + pos)))
   System.debug('If = ' + str);
        
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


String result;
Integer mark = 40;
/* if (mark >= 50) {
    result = 'Pass';
}
else {
    result = 'Fail';
}
System.debug('Result: ' + result); */

result = mark >= 50 ? 'Pass' : 'Fail';
System.debug('Result: ' + result);

if (mark >= 50) {
    //result = 'Pass';
    System.debug('Result: Pass');
}
else {
    //result = 'Fail';
    System.debug('Result: Fail' );
}


Integer a = 10;
Integer b;
b=a;
b= 40;


//Loops
Integer count = 1;

while (count > 0) {
    count++;
    System.debug(count);
}

Integer count = 1;

do {
    count++;
    System.debug(count);
} while (count > 11);