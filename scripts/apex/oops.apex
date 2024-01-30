//OOPs Concepts
//Account Name: Infosys, Balance: 10000
AccountHandler infosys = new AccountHandler();
infosys.accountName = 'Infosys';
infosys.accountBalance = 10000;
String Name = infosys.accountName;
Integer bal = infosys.accountBalance;
infosys.displayInfo();

AccountHandler tcs = new AccountHandler();
tcs.accountName = 'TCS';
tcs.accountBalance = 20000;
tcs.displayInfo();

//Variable is not visible: AccountHandler.accountName


//Encapsulation
EncapsulatedClass en1 = new EncapsulatedClass();
en1.setData('Welcoeme to Encapsulation');
System.debug(en1.getData());

//3. Inheritance:
Animal an = new Animal();
an.makeSound();

Dog d1 = new Dog();
d1.makeSound();
d1.makeDogSound();

//4.Polymorphism
Circle c1 = new Circle();
c1.draw();
Square s1 = new Square();
s1.draw();

//6. Interfaces:
