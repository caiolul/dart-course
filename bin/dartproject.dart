import 'dart:io';
import 'package:dartproject/dartproject.dart';

void main(List<String> arguments) {
  print('****Verificar idade****');
  var readAge = stdin.readLineSync();
  if (readAge != null) {
    //verificando campo nulo
    var inputAge = int.tryParse(readAge);
    verifyAge(inputAge);
  } else if (readAge == '') {
    print('Nenhum dado informado');
  }
}
