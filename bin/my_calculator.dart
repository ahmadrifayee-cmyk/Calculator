import 'dart:io';

void main() {
  print('--- Simple CMD Calculator ---');

  stdout.write('Enter first number: ');

  num num1 = num.parse(stdin.readLineSync()!);

  stdout.write('Enter operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  stdout.write('Enter second number: ');
  num num2 = num.parse(stdin.readLineSync()!);

  num result = 0;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Cannot divide by zero!');
        return;
      }
      break;
    default:
      print('Invalid operator!');
      return;
  }

  print('\nResult: $num1 $operator $num2 = $result');
}