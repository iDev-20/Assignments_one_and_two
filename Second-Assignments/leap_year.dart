void main() {
  int year = 2024;

  print(leapYearSentence(year));
}

bool leapYearCheck(int year) {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

String leapYearSentence(int year) {
  final isLeap = leapYearCheck(year);
  final currentYear = DateTime.now().year;

  String verb;
  if (year < currentYear) {
    verb = isLeap ? 'was' : 'was not';
  } else if (year == currentYear) {
    verb = isLeap ? 'is' : 'is not';
  } else {
    verb = isLeap ? 'will be' : 'will not be';
  }

  return '$year $verb a leap year!';
}
