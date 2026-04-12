import 'dart:io';

void main() {
  int contador = 0;
  String entrada = '';

  // Enquanto a palavra digitada for diferente de "sair"... 
  while (entrada != 'sair') {
    // Entrada dos dados
    stdout.writeln('Digite uma palavra (ou "sair" para encerrar): ');
    entrada = stdin.readLineSync()!;

    // Se a palavra digitada for diferente de "sair", o programa irá incrementar o contador.
    if (entrada != 'sair') {
      contador++;
    }

    // Se a palavra digitada for "sair", o programa irá encerrar o loop e imprimir a quantidade de palavras digitadas.
    else {
      stdout.writeln('A quantidade de palavras digitadas é: $contador');
    }
  }

  return;
}