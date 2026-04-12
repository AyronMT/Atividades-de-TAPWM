import 'dart:io';

void main() {
  int N, K, contador = 0;

  // Entrada dos dados
  stdout.writeln('Digite um número inteiro: ');
  N = int.parse(stdin.readLineSync()!);

  stdout.writeln('Digite outro número inteiro: ');
  K = int.parse(stdin.readLineSync()!);

  // Enquanto o número for menor que o inteiro digitado, o programa irá imprimir o número e pedir outro número
  for (int i = 1; i <= N; i++) {

    // Verifica se o número é múltiplo de K
    if (i % K == 0) {

      // Se for múltiplo, incrementa o contador
      contador++;
    }
  }

  // Em seguida, o programa irá imprimir a quantidade de números entre 1 e o inteiro digitado que são múltiplos de K
  stdout.writeln('Entre 1 e $N, há $contador números múltiplos de $K.');
  return;

}