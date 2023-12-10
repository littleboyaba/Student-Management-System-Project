// student_management_system_project/lib/student.dart

import 'person.dart';

class Student extends Person {
  late String _studentID;
  late List<double> _courseScores = [];

  Student(String name, int age, String address, String studentID)
      : super(name, age, address) {
    _studentID = studentID;
  }

  @override
  void displayRole() {
    print('Role: Student');
  }

  double calculateAverageScore() {
    if (_courseScores.isEmpty) {
      return 0.0;
    }

    double totalScore = _courseScores.reduce((a, b) => a + b);
    return totalScore / _courseScores.length;
  }

  // Grade condition for letter grade
  String determineGrade() {
    double averageScore = calculateAverageScore();

    if (averageScore >= 90) {
      return 'A';
    } else if (averageScore >= 80) {
      return 'B';
    } else if (averageScore >= 70) {
      return 'C';
    } else if (averageScore >= 60) {
      return 'D';
    } else {
      return 'F';
    }
  }

  // Getter for student ID
  String get studentID => _studentID;

  // Setter for course scores
  set courseScores(List<double> scores) {
    _courseScores = scores;
  }
}
