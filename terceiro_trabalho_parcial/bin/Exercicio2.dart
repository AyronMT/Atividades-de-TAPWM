import 'dart:io';

void main() {
  int inteiro, contador = 0;

  stdout.writeln('Digite um número inteiro: ');
  inteiro = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < inteiro; i++) {
    stdout.writeln('$i + 1 = ${i + 1}');
    contador++;
  }

  stdout.writeln('Entre 1 e $inteiro, há $contador números.');
  return;
}