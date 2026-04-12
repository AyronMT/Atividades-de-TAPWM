import 'dart:io';

void main() {
  double nota;

  do {
    stdout.writeln('Digite uma nota entre 0 a 10: ');
    nota = double.parse(stdin.readLineSync()!);

  } while (nota < 0 || nota > 10);

  stdout.writeln('A nota digitada foi: $nota');
  
}