import 'dart:io';

void main() {
  int contador = 0;
  String entrada = '';

  while (entrada != 'sair') {
    stdout.writeln('Digite uma palavra (ou "sair" para encerrar): ');
    entrada = stdin.readLineSync()!;

    if (entrada != 'sair') {
      contador++;
    }
    else {
      stdout.writeln('A quantidade de palavras digitadas é: $contador');
    }
  }
}