import 'dart:io';

void main() {
  double desconto = 0;

  stdout.write('Digite seu salário bruto: ');
  double salarioBruto = double.parse(stdin.readLineSync()!);

  if (salarioBruto <= 2000) {
    desconto = 0;
  }

  else if (salarioBruto > 2000 && salarioBruto <= 5000) {
    desconto = 0.1;
  }

  else if (salarioBruto > 5000 && salarioBruto <= 10000) {
    desconto = 0.15;
  }

  else if (salarioBruto > 10000) {
    desconto = 0.2;
  }

  double salarioLiquido = salarioBruto * (1 - desconto);

  stdout.write('Você recebeu, este mês, um salário de R\$ $salarioBruto reais. \nO desconto aplicado foi de ${desconto * 100}%. \nO valor do seu salário líquido é de R\$ $salarioLiquido reais.');
}