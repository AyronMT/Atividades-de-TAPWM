import 'dart:io';

void main() {
  // Declaração da variável para armazenar o desconto.
  double desconto = 0;

  // Coleta do salário bruto do usuário.
  stdout.write('Digite seu salário bruto: ');
  double salarioBruto = double.parse(stdin.readLineSync()!);

  // Cálculo do desconto com base no salário bruto do usuário, aplicando a alíquota correspondente e exibindo o valor do desconto aplicado e o valor do salário líquido.
  // Se o salário bruto for menor ou igual a R\$ 2000,00, o desconto é nulo.
  if (salarioBruto <= 2000) {
    desconto = 0;
  }

  // Se o salário bruto for maior que 2000,00 e menor ou igual a 5000,00, o desconto é de 10%.
  else if (salarioBruto > 2000 && salarioBruto <= 5000) {
    desconto = 0.1;
  }

  // Se o salário bruto for maior que 5000,00 e menor ou igual a 10000,00, o desconto é de 15%.
  else if (salarioBruto > 5000 && salarioBruto <= 10000) {
    desconto = 0.15;
  }

  // Se o salário bruto for maior que 10000,00, o desconto é de 20%.
  else if (salarioBruto > 10000) {
    desconto = 0.2;
  }

  // Se o salário bruto for negativo, exibir "Salário bruto inválido."
  else {
    stdout.write('Salário bruto inválido.');
    return;
  }

  // Cálculo do salário líquido e exibição do resultado.
  double salarioLiquido = salarioBruto * (1 - desconto);
  stdout.write('Você recebeu, este mês, um salário de R\$ $salarioBruto reais. \nO desconto aplicado foi de ${desconto * 100}%. \nO valor do seu salário líquido é de R\$ $salarioLiquido reais.');
}