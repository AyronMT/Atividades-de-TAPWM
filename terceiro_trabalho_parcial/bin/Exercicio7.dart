import 'dart:io';

void Menu() {
  stdout.writeln('\nMenu de Operações: ');
  stdout.writeln('1 - Somar');
  stdout.writeln('2 - Subtrair');
  stdout.writeln('0 - Sair');
}

double soma(double num1, double num2) {
  return num1 + num2;
}

double subtracao(double num1, double num2) {
  return num1 - num2;
}


void main() {
  int entrada = 0;

  stdout.writeln('Bem vindo ao Menu de Operações! ');
  stdout.write('Para começarmos, digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Agora, digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  do {
    if (entrada == 0) {
    Menu();
    entrada = int.parse(stdin.readLineSync()!);

    if (entrada == 1) {
        stdout.writeln('O resultado da soma é: ${soma(num1, num2)}');
      } else if (entrada == 2) {
        stdout.writeln('O resultado da subtração é: ${subtracao(num1, num2)}');
      } else if (entrada == 0) {
        stdout.writeln('O Programa será encerrado. Obrigado por usar o Menu de Operações!');
      } else {
        stdout.writeln('Opção inválida. Por favor, escolha uma opção válida do menu.');
      }
    
    } else {
      stdout.writeln('\nVamos fazer mais uma operação? Digite mais um numero: ');
      num1 = double.parse(stdin.readLineSync()!);

      stdout.writeln('Agora digite o segundo numero: ');
      num2 = double.parse(stdin.readLineSync()!);

      Menu();
      entrada = int.parse(stdin.readLineSync()!);

      if (entrada == 1) {
        stdout.writeln('O resultado da soma é: ${soma(num1, num2)}');
      } else if (entrada == 2) {
        stdout.writeln('O resultado da subtração é: ${subtracao(num1, num2)}');
      } else if (entrada == 0) {
        stdout.writeln('O Programa será encerrado. Obrigado por usar o Menu de Operações!');
      } else {
        stdout.writeln('Opção inválida. Por favor, escolha uma opção válida do menu.');
      }

    }
    
  } while (entrada != 0);

  return;
}