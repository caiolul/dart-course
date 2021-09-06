import 'dart:io';

void verifyAge() {
  print('-----------Verificar idade-----------');
  print('Digite sua idade:');
  var readAge = stdin.readLineSync();
  if (readAge != null) {
    //verificando campo nulo
    var inputAge = int.parse(readAge);

    //verificando campo nulo
    print('----Verificando idade----');
    if (inputAge >= 18) {
      print('Parabens!! Voçe já pode tirar sua carteira');
      print(
          'Ligue no numero (13)1234-1234 e escolha o tipo de carteira que deseja');
    } else {
      var younger = 18 - inputAge;
      print('Voçe ainda não tem idade suficiente para tirar a CNH.');
      print('Sua idade é $inputAge, ainda falta mais $younger anos.');
    }
  }
  return;
}

void calculateMonthlyPayment() {
  var valueCnh = 1600;
  print('-----------Metodos de pagamento-----------');
  print('Escolha as opções de pagamento:');
  print(
      '1 para parcelado sem entrada, 2 para parcelado com entrada e 3 para a vista');
  var option = stdin.readLineSync();
  if (option != null) {
    var optionInt = int.parse(option);

    switch (optionInt) {
      // Metodo parcelado sem entrada
      case 1:
        print('Digite o numero de parcelas:');
        var numParcel = stdin.readLineSync();
        if (numParcel != null) {
          var numParcelInt = int.parse(numParcel);
          var parcel = valueCnh / numParcelInt;
          print('Sem entrada a CNH vai ficar $numParcelInt de $parcel');
        }
        break;
      // Metodo parcelado com entrada
      case 2:
        print('Digite o valor da entrada:');
        var entry = stdin.readLineSync();
        print('Digite o numero de parcelas:');
        var numParcel = stdin.readLineSync();
        if (numParcel != null && entry != null) {
          var numParcelInt = int.parse(numParcel);
          var entryInt = int.parse(entry);
          var newValueCnh = valueCnh - entryInt;
          var parcel = newValueCnh / numParcelInt;
          if (newValueCnh <= 0) {
            print('Valor foi pago totalmente com a entrada');
          } else {
            print('Sem entrada a CNH vai ficar $numParcelInt de $parcel');
          }
        }
        break;
      // Metodo a vista
      case 3:
        print('Valor foi pago totalmente com a entrada');
        break;

      default:
        print('Error! Insira uma opção valida');
    }
  }
}

void matrices() {
  int a = 4;
  int b = 4;
  int c = 4;
  var matrice = List.generate(
      a, (i) => List.generate(b, (j) => List.generate(c, (k) => i + j + k)));
  matrice.forEach((element) {
    print(element);
  });
}
