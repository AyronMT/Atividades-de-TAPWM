import 'dart:io';

void main() { 
  String resposta;

  do {
    stdout.write('Deseja continuar(S/N)?: ');
    resposta = stdin.readLineSync()!.toUpperCase();

    if (resposta == 'S') {
      stdout.writeln('Você escolheu continuar. O programa continuará executando.');
    } else if (resposta == 'N') {
      stdout.writeln('Você escolheu não continuar. O programa será encerrado.');
    } else {
      stdout.writeln('Resposta inválida. Por favor, digite "S" para sim ou "N" para não.');
      resposta = 'S';
    }

  } while(resposta == 'S');


}