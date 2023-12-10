// student_management_system_project/lib/student_management_system.dart

import 'dart:io';
import 'package:main/role.dart';
import 'student.dart';
import 'teacher.dart';

class StudentManagementSystem {
  void run() {
    while (true) {
      print('\nChoose Role to Manage:');
      print('1. Student');
      print('2. Teacher');
      print('3. Exit');
      print('Enter your choice (1-3):');

      var choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          var student = createStudentFromInput();
          displayStudentInformation(student);
          break;
        case '2':
          var teacher = createTeacherFromInput();
          displayTeacherInformation(teacher);
          break;
        case '3':
          print('Exiting the program.');
          return;
        default:
          print('Invalid choice. Please enter a number between 1 and 3.');
      }
    }
  }

  Student createStudentFromInput() {
    print('\nEnter Student Information:');
    print('Enter Name:');
    var name = stdin.readLineSync()!;
    print('Enter Age:');
    var age = int.parse(stdin.readLineSync()!);
    print('Enter Address:');
    var address = stdin.readLineSync()!;
    print('Enter Student ID:');
    var studentID = stdin.readLineSync()!;

    // Input for courseScores
    print('Enter comma-separated course scores:');
    var scoresInput = stdin.readLineSync()!;
    var courseScores = scoresInput.split(',').map((s) => double.parse(s.trim())).toList();

    var student = Student(name, age, address, studentID);
    student.courseScores = courseScores;
    return student;
  }

  Teacher createTeacherFromInput() {
    print('\nEnter Teacher Information:');
    print('Enter Name:');
    var name = stdin.readLineSync()!;
    print('Enter Age:');
    var age = int.parse(stdin.readLineSync()!);
    print('Enter Address:');
    var address = stdin.readLineSync()!;
    print('Enter Teacher ID:');
    var teacherID = stdin.readLineSync()!;

    return Teacher(name, age, address, teacherID);
  }

  void displayPersonRole(Role person) {
    print('Role: ${person.runtimeType}');
  }

  void displayStudentInformation(Student student) {
    print('\nStudent Information:');
    displayPersonRole(student);
    print('Name: ${student.getName}');
    print('Age: ${student.getAge}');
    print('Address: ${student.getAddress}');
    print('Student ID: ${student.studentID}');
    print('Letter Grade: ${student.determineGrade()}');
    print('Average Score: ${student.calculateAverageScore()}');
  }

  void displayTeacherInformation(Teacher teacher) {
    print('\nTeacher Information:');
    displayPersonRole(teacher);
    print('Name: ${teacher.getName}');
    print('Age: ${teacher.getAge}');
    print('Address: ${teacher.getAddress}');
    print('Teacher ID: ${teacher.teacherID}');
    teacher.displayCoursesTaught();
  }
}

