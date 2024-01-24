//Collections
//List, Set, Map
//primitive types, collections, sObjects, user-defined types, and built-in Apex types.
// Integer, List, Account, MyFirstApex, System
//primitive types
List<Integer> listint;
//sObjects
List<Account> listaccts;
//collections
Map<String,List<String>> mapval;
//user-defined types
List<MyFirstApex> listmyapex;

//List
List<Integer> listint = new List<Integer>{1,2,3,4,5,6,7,8,9,10,1,2,3,4,5};
for (Integer i : listint) {
    System.debug('I = ' + i);
}

List<Integer> listint1 = new List<Integer>();
for (Integer i = 0; i < 20; i++) {
    listint1.add(i);
    listint1.add(i+1);
}

system.debug('List Size = ' + listint1.size());

for (Integer i : listint1) {
    System.debug('I = ' + i);
}

List<Integer> listint1 = new List<Integer>();
for (Integer i = 20; i > 0; i--) {
    listint1.add(i);
}

system.debug('List Size = ' + listint1.size());
listint1.sort();
for (Integer i : listint1) {
    System.debug('I = ' + i);
}
System.debug('To Find #5 = ' + listint1.contains(5));
System.debug('To Find #15 = ' + listint1.contains(15));
System.debug('To Find #25 = ' + listint1.contains(25));
listint1.clear();
system.debug('List after clear Size = ' + listint1.size());
System.debug('To Find #5 = ' + listint1.contains(5));
System.debug('To Find #15 = ' + listint1.contains(15));
System.debug('To Find #25 = ' + listint1.contains(25));

//Set

Set<Integer> setint1 = new Set<Integer>();
for (Integer i = 0; i < 20; i++) {
    setint1.add(i);
    setint1.add(i+1);
}
system.debug('Set Size = ' + setint1.size());
for (Integer i : setint1) {
    System.debug('i = ' + i);
}

Set<Integer> Setint = new Set<Integer>{6,7,8,9,10,1,2,3,4,51,2,3,4,5};
for (Integer i : Setint) {
    System.debug('I = ' + i);
}

//Map
Map<String, String> MyStrings = new Map<String, String>{'a' => 'b', 'c' => 'd'.toUpperCase()};
System.debug('Map = ' + MyStrings);

Map<String, String> MyStrings1 = new Map<String, String>{'Name' => 'Kumar', 'Name' => 'Sentil'.toUpperCase()};
System.debug('Map = ' + MyStrings1);

Map<Integer, String> MyStrings1 = new Map<Integer, String>{1 => 'Kumar', 2 => 'Sentil'.toUpperCase()};
System.debug('Map = ' + MyStrings1);

Map<Integer, String> MyStrings2 = new Map<Integer, String>();
for (Integer i = 0; i < 20; i++) {
    MyStrings2.put(i, (i+1)+'');
}

System.debug('Map = ' + MyStrings2);

for (Integer i : MyStrings2.keySet()) {
    System.debug('Key = ' +i +' & Value =' + MyStrings2.get(i) ) ;
}

for (String i : MyStrings2.values()) {
    System.debug('Value = ' +i) ;
}

System.debug('To Find 19 = ' +MyStrings2.containsKey(19));

ApexDemoVS apexobj1 = new ApexDemoVS();
List<String> conts = apexobj1.getContactName('United Oil & Gas Corp.');
List<String> conts1 = apexobj1.getContactName('Express Logistics and Transport');
List<String> conts2 = apexobj1.getContactName('Grand Hotels & Resorts Ltd');

conts.addAll(conts1);
conts.addAll(conts2);
System.Debug('===============================');
System.Debug('Contact Details');
System.Debug('===============================');
for(String c : conts ) {
    System.debug(c);
}
/* for(String c : conts1 ) {
    System.debug(c);
} */

List<String> listacctnames = new List<String>{'United Oil & Gas Corp.', 'Express Logistics and Transport', 'Grand Hotels & Resorts Ltd'};
ApexDemoVS apexobj1 = new ApexDemoVS();
List<String> conts = apexobj1.getContactName(listacctnames);
System.Debug('===============================');
System.Debug('Contact Details');
System.Debug('===============================');
for(String c : conts ) {
    System.debug(c);
}

List<String> listacctnames = new List<String>{'United Oil & Gas Corp.', 'Express Logistics and Transport', 'Grand Hotels & Resorts Ltd'};
//ApexDemoVS apexobj1 = new ApexDemoVS();
List<String> conts = ApexDemoVS.getContactNames(listacctnames);
System.Debug('===============================');
System.Debug('Contact Details');
System.Debug('===============================');
for(String c : conts ) {
    System.debug(c);
}