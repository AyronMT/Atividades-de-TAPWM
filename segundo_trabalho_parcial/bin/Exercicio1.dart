
import 'dart:io';

void main() {
  double recompensa = 0;

  stdout.write('Digite a distância percorrida em metros: ');
  double distancia = double.parse(stdin.readLineSync()!);

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

  print('A recompensa é de $recompensa reais.');
}