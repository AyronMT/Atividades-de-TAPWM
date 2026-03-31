import 'dart:io';

void main() {
  // Declaração da variável para armazenar a recompensa
  double recompensa = 0;

  // Coleta da distância percorrida em metros
  stdout.write('Digite a distância percorrida em metros: ');
  double distancia = double.parse(stdin.readLineSync()!);

  // Cálculo da recompensa com base na distância percorrida
  if (distancia < 800) {
    recompensa = 5000;
  } else if (distancia >= 800 && distancia <= 1500) {
    recompensa = 10000;
  } else if (distancia > 1500) {
    recompensa = 15000;
  }
  else {
    print('Distância inválida.');
  }

  // Exibição da recompensa calculada
  print('A recompensa é de $recompensa reais.');
}