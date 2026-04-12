import 'dart:io';

void main() {
  int entrada, loop = 1, soma = 0, contador = 0;

  while (loop == 1) {
  stdout.writeln('Digite um número inteiro: ');
  entrada = int.parse(stdin.readLineSync()!);

  if (entrada == 0) {
    loop = 0;
  } else {
    soma += entrada;
    contador++;
  }
  }

  stdout.writeln('A soma dos números digitados é: $soma');
  stdout.writeln('A quantidade de números digitados é: $contador');
  
  return;
}