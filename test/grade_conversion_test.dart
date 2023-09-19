import 'package:grade_calculator/grade_converter.dart';
import 'package:test/test.dart';

void main() {
  group('GradeConverter', () {
    final gradeConverter = GradeConverter();

    test('Grade conversion - Numeric Grade 95', () {
      final result = gradeConverter.convertToLetterGrade(95);
      expect(result, equals('A'));
    });

    test('Grade conversion - Numeric Grade 85', () {
      final result = gradeConverter.convertToLetterGrade(85);
      expect(result, equals('B'));
    });

    test('Grade conversion - Numeric Grade 75', () {
      final result = gradeConverter.convertToLetterGrade(75);
      expect(result, equals('C'));
    });
    test('Grade conversion - Numeric Grade 65', () {
      final result = gradeConverter.convertToLetterGrade(65);
      expect(result, equals('D'));
    });
    test('Grade conversion - Numeric Grade 55', () {
      final result = gradeConverter.convertToLetterGrade(55);
      expect(result, equals('F'));
    });
  });
}
