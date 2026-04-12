import 'dart:io';

void main() {
  double nota;
  
  do {
    // Pede para que o usuário digite uma nota entre 0 e 10.
    stdout.writeln('Digite uma nota entre 0 a 10: ');
    nota = double.parse(stdin.readLineSync()!);

  } 

  // Enquanto a nota não estiver no intervalo de 0 a 10, o programa irá continuar pedindo para que o usuário digite uma nota válida.
  while (nota < 0 || nota > 10);

  // Se a nota for válida, o programa irá imprimir a nota digitada.
  stdout.writeln('A nota digitada foi: $nota');

}