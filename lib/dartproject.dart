int calculate() {
  return 6 * 7;
}

void verifyAge(int? age) {
  if (age != null) {
    //verificando campo nulo
    print('----Verificando idade----');
    if (age >= 18) {
      print('Parabens!! Voçe já pode tirar sua carteira');
      print(
          'Ligue no numero 1234-1234 e escolha o tipo de carteira que deseja');
    } else {
      var younger = 18 - age;
      print('Voçe ainda não tem idade suficiente para tirar a CNH.');
      print('Sua idade é $age, ainda falta mais $younger anos.');
    }
  }
  return;
}
