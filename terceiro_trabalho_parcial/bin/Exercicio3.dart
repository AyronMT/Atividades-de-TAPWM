import 'dart:io';

void main() {
  int N, K, contador = 0;

  stdout.writeln('Digite um número inteiro: ');
  N = int.parse(stdin.readLineSync()!);

  stdout.writeln('Digite outro número inteiro: ');
  K = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    if (i % K == 0) {
      contador++;
    }
  }

  stdout.writeln('Entre 1 e $N, há $contador números múltiplos de $K.');
  return;

}