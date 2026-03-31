import 'dart:io';

void main() {
  // Declaração das variáveis para armazenar os litros, valor unitário, valor total e tipo de combustível.
  double litros, valorUnitario, valorTotal;
  String combustivel;

  // Exibição dos tipos de combustíveis disponíveis.
  stdout.write('Esse são os tipos de combustíveis disponíveis:\n');
  stdout.write('1 - Gasolina comum\n');
  stdout.write('2 - Gasolina premium\n');
  stdout.write('3 - Diesel\n');
  stdout.write('4 - Álcool\n');

  // Coleta do tipo de combustível escolhido pelo usuário.
  stdout.write('Digite o número correspondente ao tipo de combustível escolhido: ');
  combustivel = stdin.readLineSync()!;

  // Verificação do tipo de combustível escolhido pelo usuário, atribuindo o valor unitário correspondente.
  // Se for igual a 1, o valor unitário é de R\$ 6,50 por litro, pois é Gasolina comum.
  if (combustivel == '1') {
    valorUnitario = 6.50;
    combustivel = 'Gasolina comum';
  } 
  
  // Se for igual a 2, o valor unitário é de R\$ 7,80 por litro, pois é Gasolina premium.
  else if (combustivel == '2') {
    valorUnitario = 7.80;
    combustivel = 'Gasolina premium';
  } 
  
  // Se for igual a 3, o valor unitário é de R\$ 5,90 por litro, pois é Diesel.
  else if (combustivel == '3') {
    valorUnitario = 5.90;
    combustivel = 'Diesel';
  } 

  // Se for igual a 4, o valor unitário é de R\$ 4,20 por litro, pois é Álcool.
  else if (combustivel == '4') {
    valorUnitario = 4.20;
    combustivel = 'Álcool';
  } 
  
  // Se for diferente de 1, 2, 3 ou 4, exibir "Combústivel inválido." e encerrar o programa.
  else {
    stdout.write('Combústivel inválido.');
    return;
  }

  // Coleta da quantidade de litros abastecidos pelo usuário.
  stdout.write('Digite a quantidade de litros abastecidos: ');
  litros = double.parse(stdin.readLineSync()!);

  // Cálculo do valor total a ser pago, multiplicando a quantidade de litros pelo valor unitário do combustível escolhido pelo usuário, e exibição do resultado.
  valorTotal = litros * valorUnitario;

  // Exibição dos detalhes do abastecimento, incluindo o tipo de combustível escolhido, a quantidade de litros abastecidos, o valor unitário e o valor total a ser pago.
  stdout.write('Tipo de combustível escolhido: $combustivel\n');
  stdout.write('Quantidade de litros abastecidos: $litros litros\n');
  stdout.write('Valor unitário: $valorUnitario R\$ por litro.\n');
  stdout.write('Valor total a ser pago: $valorTotal R\$.\n');
}