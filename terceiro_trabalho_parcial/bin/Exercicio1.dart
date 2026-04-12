import 'dart:io';

int main() {
  
  stdout.writeln('Digite um número inteiro: ');
  int numero = int.parse(stdin.readLineSync()!);

  for (int x = numero; x != -1; x--) {
    stdout.writeln(x);
  }

  return 0;
}