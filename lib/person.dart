// student_management_system_project/lib/person.dart

import 'role.dart';

class Person implements Role {
  final String _name;
  final int _age;
  final String _address;

  Person(this._name, this._age, this._address);

  String get getName => _name;
  int get getAge => _age;
  String get getAddress => _address;

  @override
  void displayRole() {
  }
}
