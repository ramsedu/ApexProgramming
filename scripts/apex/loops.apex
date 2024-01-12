//Loops
/* for (init_stmt; exit_condition; increment_stmt) {
    code_block
} */

Integer i = 10;
for(; i>0; ) {
    System.debug('i = '+ i);
    i = i - 2;
}

//List<String> names = new List<String>{'Kumar', 'Anand','Hena'};
String[] names;//  = new String[]{};
//0 , 3
if (names != null)
{
    for(Integer index = 0; index < names.size() ;index++ ){
        System.debug('Name = ' + names[index]);
    } 
                            // {'Kumar', 'Anand','Hena'};
            // 1 => name = 'Kumar', 2 => name = 'Anand', ...etc
    // System.debug('Size = ' + names.size());

    for(String name : names) {
        System.debug('Name = ' + name);
    }
}

Integer[] myInts = new Integer[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
List<Integer> myInts1 = new List<Integer>{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
List<Integer> myInts2 = new List<Integer>();


for (Integer i : myInts) {
    System.debug(i);
}

SELECT Id, Name, Phone
  FROM Account
  
//SOQL ==> Salesforce Object Query Language
Account[] accts = [SELECT Id, Name, Phone
                    FROM Account 
                    ORDER BY Name ASC
                    LIMIT 50000];

for(Account ac : accts) {
        System.debug('Account Name = ' + ac.Name +' & Phone = ' + ac.Phone + ' Site = ' + ac.Sites);
    }

    System.debug(accts.size());
    System.debug(accts[0].Name);

/* for (variable : [soql_query]) {
    code_block
} */

For(Account acc : [SELECT Id, Name, Phone
                    FROM Account 
                    ORDER BY Name ASC
                    LIMIT 50000]) {
                        System.debug('Account Name = ' + acc.Name +' & Phone = ' + acc.Phone);
}

