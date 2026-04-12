import 'dart:io';

void main() {
  int entrada = 1, contadorpar = 0, contadorimpar = 0;

  while(entrada != 0) {

    if (entrada == 0) {
      break;
    }

    else {
      stdout.writeln('Digite um número inteiro: ');
      entrada = int.parse(stdin.readLineSync()!);

      if (entrada % 2 == 0) {
        if (entrada == 0) {
          break;
        }
        
        contadorpar++;
      }

      else {
        contadorimpar++;
      }
    }
    
  }
 
  stdout.writeln('A quantidade de números pares digitados é: $contadorpar');
  stdout.writeln('A quantidade de números ímpares digitados é: $contadorimpar');

  return;
}