import 'dart:io';

void main() { 
  String resposta;

  do {
    // Pergunta se o usuário deseja continuar ou não.
    stdout.write('Deseja continuar(S/N)?: ');
    resposta = stdin.readLineSync()!.toUpperCase();

    // Se a resposta for igual a "S", o programa irá continuar executando.
    // Se a resposta for igual a "N", o programa irá encerrar.
    // Caso contrário, o programa irá informar que a resposta é inválida e pedir para o usuário digitar uma resposta válida.
    if (resposta == 'S') {
      stdout.writeln('Você escolheu continuar. O programa continuará executando.');
    } else if (resposta == 'N') {
      stdout.writeln('Você escolheu não continuar. O programa será encerrado.');
    } else {
      stdout.writeln('Resposta inválida. Por favor, digite "S" para sim ou "N" para não.');

      // A resposta é inválida, então o programa forçará a resposta a ser igual a "S" para que o programa continue executando.
      resposta = 'S';
    }

  } 
  
  // Enquanto a resposta for igual a "S", o programa irá continuar executando.
  while(resposta == 'S');


}