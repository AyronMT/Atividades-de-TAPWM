import 'dart:io';

void main() {
  int entrada, loop = 1, soma = 0, contador = 0;

  // Enquanto o número for igual a 1...
  while (loop == 1) {
  
  // Entrada dos dados
  stdout.writeln('Digite um número inteiro: ');
  entrada = int.parse(stdin.readLineSync()!);

  // Se o número for igual a 0, o programa irá encerrar o loop. Caso contrário, o programa irá somar o número digitado e incrementar o contador.
  if (entrada == 0) {
    loop = 0;
  } else {
    soma += entrada;
    contador++;
  }
  }

  // Em seguida, o programa irá imprimir a soma dos números digitados e a quantidade de números digitados.
  stdout.writeln('A soma dos números digitados é: $soma');
  stdout.writeln('A quantidade de números digitados é: $contador');
  
  return;
}