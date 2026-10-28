import 'dart:io';

String checkScore(int score) {
  String result;

  if (score < 0 || score > 100) {
    result = 'INVALID SCORE';
  } else if (score >= 75) {
    result = 'PASSED';
  } else {
    result = 'FAILED';
  }

  print('');
  print('========================================');
  print('              SCORE REPORT              ');
  print('========================================');
  print('Student Score : $score / 100');
  print('Final Result  : $result');
  print('----------------------------------------');

  for (int i = 1; i <= 3; i++) {
    print('Check $i: Your result is $result.');
  }

  print('========================================');

  return result;
}

void main() {
  print('');
  print('========================================');
  print('          STUDENT SCORE CHECKER         ');
  print('========================================');
  stdout.write('Enter your score: ');

  try {
    String? input = stdin.readLineSync();
    int score = int.parse(input ?? '');

    String result = checkScore(score);
  } on FormatException {
    print('');
    print('========================================');
    print('              INVALID INPUT             ');
    print('========================================');
    print('Please enter a valid whole number.');
    print('Example: 85');
    print('========================================');
  } catch (e) {
    print('');
    print('========================================');
    print('                  ERROR                 ');
    print('========================================');
    print('Something went wrong: $e');
    print('========================================');
  }
}
