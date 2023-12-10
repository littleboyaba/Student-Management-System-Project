// student_management_system_project/lib/teacher.dart

import 'person.dart';

class Teacher extends Person {
  late String _teacherID;
  late List<String> _coursesTaught = [];

  Teacher(String name, int age, String address, String teacherID)
      : super(name, age, address) {
    _teacherID = teacherID;
  }

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCoursesTaught() {
    if (_coursesTaught.isEmpty) {
      print('The teacher is not currently teaching any courses.');
    } else {
      print('Courses Taught:');
      for (var course in _coursesTaught) {
        print('- $course');
      }
    }
  }

  // Getter for teacher ID
  String get teacherID => _teacherID;

  // Setter for courses taught
  set coursesTaught(List<String> courses) {
    _coursesTaught = courses;
  }
}
