import 'dart:io';

void main() {
  int entrada = 1, contadorpar = 0, contadorimpar = 0;

  // Enquanto o número for diferente de 0, o programa irá imprimir o número e pedir outro número
  while(entrada != 0) {

    // Se o número for igual a 0, o programa irá encerrar o loop.
    if (entrada == 0) {
      break;
    }

    // Se não for igual a 0...
    else {
      // Entrada dos dados
      stdout.writeln('Digite um número inteiro: ');
      entrada = int.parse(stdin.readLineSync()!);

      // Verifica se o número é par ou ímpar
      if (entrada % 2 == 0) {
        if (entrada == 0) {
          break;
        }
        
        // Se for par, incrementa o contador de números pares
        contadorpar++;
      }

      // Se for ímpar, incrementa o contador de números ímpares
      else {
        contadorimpar++;
      }
    }
    
  }
 
  // Em seguida, o programa irá imprimir a quantidade de números pares e ímpares digitados.
  stdout.writeln('A quantidade de números pares digitados é: $contadorpar');
  stdout.writeln('A quantidade de números ímpares digitados é: $contadorimpar');

  return;
}