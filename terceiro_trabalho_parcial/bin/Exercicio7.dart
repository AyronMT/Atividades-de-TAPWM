import 'dart:io';

// Função para exibir o menu de operações
void Menu() {
  stdout.writeln('\nMenu de Operações: ');
  stdout.writeln('1 - Somar');
  stdout.writeln('2 - Subtrair');
  stdout.writeln('0 - Sair');
}

// Função para realizar a soma de dois números
double soma(double num1, double num2) {
  return num1 + num2;
}

// Função para realizar a subtração de dois números
double subtracao(double num1, double num2) {
  return num1 - num2;
}


void main() {
  int entrada = 0;

  // Entrada dos dados
  stdout.writeln('Bem vindo ao Menu de Operações! ');
  stdout.write('Para começarmos, digite o primeiro número: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Agora, digite o segundo número: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // O código fará x...
  do {
    // Se a entrada ainda não foi digitada, ou seja, entrada é igual a 0, o programa irá exibir o menu e pedir para o usuário escolher uma opção.
    if (entrada == 0) {
    Menu();
    entrada = int.parse(stdin.readLineSync()!);

    // Se a entrada for igual a 1, o programa irá realizar a soma dos dois números e exibir o resultado.
    // Se a entrada for igual a 2, o programa irá realizar a subtração dos dois números e exibir o resultado. 
    // Se a entrada for igual a 0, o programa irá encerrar o loop e imprimir uma mensagem de despedida. 
    // Caso contrário, o programa irá informar que a opção é inválida e pedir para o usuário escolher uma opção válida do menu.
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

    // Se a entrada já foi digitada, ou seja, entrada é diferente de 0, o programa irá perguntar se o usuário deseja realizar mais uma operação.
     else {
      // Entrada dos dados
      stdout.writeln('\nVamos fazer mais uma operação? Digite mais um numero: ');
      num1 = double.parse(stdin.readLineSync()!);

      stdout.writeln('Agora digite o segundo numero: ');
      num2 = double.parse(stdin.readLineSync()!);

      // Exibe o menu de operações e pede para o usuário escolher uma opção.
      Menu();
      entrada = int.parse(stdin.readLineSync()!);

      // Se a entrada for igual a 1, o programa irá realizar a soma dos dois números e exibir o resultado.
      // Se a entrada for igual a 2, o programa irá realizar a subtração
      // Se a entrada for igual a 0, o programa irá encerrar o loop e imprimir uma mensagem de despedida.
      // Caso contrário, o programa irá informar que a opção é inválida e pedir para o usuário escolher uma opção válida do menu.
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
    
  }
  // Enquanto a entrada for diferente de 0, o programa irá continuar perguntando se o usuário deseja realizar mais uma operação.
   while (entrada != 0);

  return;
}