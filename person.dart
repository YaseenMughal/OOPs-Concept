// Encapsulation Method

class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set setName(String name) {
    _name = name;
  }

  set setAge(int age) {
    if (age > 0) {
      _age = age;
    }
  }

  void displayInfo() {
    print("UserName: ${_name} | UserAge: ${_age}");
  }
}
