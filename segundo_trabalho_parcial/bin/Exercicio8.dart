import 'dart:io';

void main() {
  // Coleta do consumo mensal de energia elétrica do usuário em kWh.
  stdout.write('Digite seu consumo deste mês em kWh: ');
  double consumo = double.parse(stdin.readLineSync()!);

  // Cálculo do valor total da conta de energia elétrica com base no consumo mensal do usuário, aplicando a tarifa correspondente e a taxa extra, se aplicável, e exibindo o resultado.
  if (consumo <= 100) {
    stdout.write('Consumo mensal: $consumo kWh. \n');
    stdout.write('Valor base da conta: 0,80R\$ por kWh. \n');
    stdout.write('Taxa extra: não aplicável. \n');
    stdout.write('Valor total da conta: ${consumo * 0.80}R\$. \n');
  } 

  // Se o consumo mensal for maior que 100 kWh e menor ou igual a 300 kWh, a tarifa é de 1,10R\$ por kWh e não há taxa extra.
  else if (consumo > 100 && consumo <= 300) {
    stdout.write('Consumo mensal: $consumo kWh. \n');
    stdout.write('Valor base da conta: 1,10R\$ por kWh. \n');
    stdout.write('Taxa extra: não aplicável. \n');
    stdout.write('Valor total da conta: ${consumo * 1.10}R\$. \n');
  }

  // Se o consumo mensal for maior que 300 kWh e menor ou igual a 500 kWh, a tarifa é de 1,40R\$ por kWh. Se o consumo mensal for maior que 500 kWh, a tarifa é de 1,80R\$ por kWh. Para ambos os casos, se o consumo mensal for maior ou igual a 400 kWh, será aplicada uma taxa extra de 10% sobre o valor total da conta.
  else if(consumo > 300 && consumo <= 500) {
    stdout.write('Consumo mensal: $consumo kWh. \n');
    stdout.write('Valor base da conta: 1,40R\$ por kWh. \n');

    // Se o consumo mensal for maior ou igual a 400 kWh, será aplicada uma taxa extra de 10% sobre o valor total da conta.
    if (consumo >= 400) {
      stdout.write('Taxa extra: 10%. \n');
      stdout.write('Valor total da conta: ${consumo * 1.40 * 1.10}R\$. \n');
    } 
    
    // Se o consumo mensal for menor que 400 kWh, a taxa extra não será aplicada.
    else {
      stdout.write('Taxa extra: não aplicável. \n');
      stdout.write('Valor total da conta: ${consumo * 1.40}R\$. \n');
    }
    
  }

  // Se o consumo mensal for maior que 500 kWh, a tarifa é de 1,80R\$ por kWh. Se o consumo mensal for maior ou igual a 400 kWh, será aplicada uma taxa extra de 10% sobre o valor total da conta.
  else if (consumo > 500) {
    stdout.write('Consumo mensal: $consumo kWh. \n');
    stdout.write('Valor base da conta: 1,80R\$ por kWh. \n');

    // Se o consumo mensal for maior ou igual a 400 kWh, será aplicada uma taxa extra de 10% sobre o valor total da conta.
    if (consumo >= 400) {
      stdout.write('Taxa extra: 10%. \n');
      stdout.write('Valor total da conta: ${consumo * 1.80 * 1.10}R\$. \n');
    } 
    
    // Se o consumo mensal for menor que 400 kWh, a taxa extra não será aplicada.
    else {
      stdout.write('Taxa extra: não aplicável. \n');
      stdout.write('Valor total da conta: ${consumo * 1.80}R\$. \n');
    }

  }

  // Se o consumo mensal for negativo, exibir "Valor de consumo inválido."
  else {
    stdout.write('Valor de consumo inválido. \n');
  }
}