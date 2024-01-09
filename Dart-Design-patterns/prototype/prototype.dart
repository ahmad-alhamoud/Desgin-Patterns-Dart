class Employee {
  String name;
  int age;
  String address;
  Employee({required this.name, required this.age, required this.address});

  clone() => Employee(name: name, age: age, address: address);
}

void main() {
  Employee ahmad = Employee(name: "Ahmad", age: 22, address: "Syria");
  // shallow clone Employee ali will take the same atributes Employee ahmad
  Employee ali = ahmad.clone();

  print(ahmad.name);
  print (ali.name) ;

  // You can also edit atributes Employee ali without effect Employee ahmad
  ali.name = "Ali";
  print(ali.name); 

}
