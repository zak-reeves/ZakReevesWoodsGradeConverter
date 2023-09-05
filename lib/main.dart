import 'package:test/test.dart';

import 'grade_converter.dart';

void main() {
  test('Converts 95 to A', () {
    final gradeConverter = GradeConverter();
    final letterGrade = gradeConverter.convertGrades(95);
    expect(letterGrade, 'A');
  });

  test('Converts 85 to B', () {
    final gradeConverter = GradeConverter();
    final letterGrade = gradeConverter.convertGrades(85);
    expect(letterGrade, 'B');
  });

  test('Converts 75 to C', () {
    final gradeConverter = GradeConverter();
    final letterGrade = gradeConverter.convertGrades(75);
    expect(letterGrade, 'C');
  });

  test('Converts 65 to D', () {
    final gradeConverter = GradeConverter();
    final letterGrade = gradeConverter.convertGrades(65);
    expect(letterGrade, 'D');
  });

  test('Converts 55 to F', () {
    final gradeConverter = GradeConverter();
    final letterGrade = gradeConverter.convertGrades(55);
    expect(letterGrade, 'F');
  });
}
