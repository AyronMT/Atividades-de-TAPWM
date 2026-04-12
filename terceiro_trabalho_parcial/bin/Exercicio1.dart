import 'dart:io';

int main() {
  // Entrada dos dados
  stdout.writeln('Digite um número inteiro: ');
  int numero = int.parse(stdin.readLineSync()!);

  // Enquanto o número for diferente de -1, o programa irá imprimir o número e pedir outro número
  for (int x = numero; x != -1; x--) {
    stdout.writeln(x);
  }

  return 0;
}