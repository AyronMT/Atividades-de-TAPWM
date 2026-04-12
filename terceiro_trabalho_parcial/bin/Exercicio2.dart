import 'dart:io';

void main() {
  int inteiro, contador = 0;

  // Entrada dos dados
  stdout.writeln('Digite um número inteiro: ');
  inteiro = int.parse(stdin.readLineSync()!);

  // Enquanto o número for menor que o inteiro digitado, o programa irá imprimir o número e pedir outro número
  for (int i = 1; i < inteiro; i++) {
    stdout.writeln('$i + 1 = ${i + 1}');
    contador++;
  }

  // Em seguida, o programa irá imprimir a quantidade de números entre 1 e o inteiro digitado
  stdout.writeln('Entre 1 e $inteiro, há $contador números.');
  return;
}