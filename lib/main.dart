class GradeConverter {
  String grades(double numericGrade) {
    if (numericGrade >= 90) {
      return 'A';
    } else if (numericGrade >= 80) {
      return 'B';
    } else if (numericGrade >= 70) {
      return 'C';
    } else if (numericGrade >= 60) {
      return 'D';
    } else {
      return 'F';
    }
  }
}
