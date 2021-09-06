import 'dart:io';
import 'package:dartproject/dartproject.dart';

void main(List<String> arguments) {
  matrices();
  var exit = 1;
  print('-----------Menu----------');

  while (exit != 0) {
    verifyAge();
    calculateMonthlyPayment();
    print('-----------Menu----------');
    print('Digite 1 para continuar ou 0 para sair');
    var input = stdin.readLineSync();
    if (input != null) {
      exit = int.parse(input);
    }
  }
  return;
}
