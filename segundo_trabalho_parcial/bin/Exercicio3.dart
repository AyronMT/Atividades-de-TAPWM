import 'dart:io';

void main() {
  // Declaração de variáveis.
  double valortotal = 0.0;
  int quantidade = 0;

  // Exibição do cardápio da loja.
  stdout.write('| ———————————————————————————————————— |\n');
  stdout.write('| —————————Cardapio da Loja——————————— |\n');
  stdout.write('| ———————————————————————————————————— |\n');
  stdout.write('| ——————Lanche | Código | Valor——————— |\n');
  stdout.write('| ———————————————————————————————————— |\n');
  stdout.write('| ——Cachorro Quente | 101 | R\$ 14.20—— |\n');
  stdout.write('| ———Bauru Simples | 102 | R\$ 12.30——— |\n');
  stdout.write('| ———Bauru com Ovo | 103 | R\$ 13.50——— |\n');
  stdout.write('| ————Hambúrguer | 104 | R\$ 10.20———— |\n');
  stdout.write('| ———Cheeseburguer | 105 | R\$ 15.30——— |\n');
  stdout.write('| ———Refrigerante | 106 | R\$ 10.00——— |\n');
  stdout.write('| ———————————————————————————————————— |\n'); 

  // Coleta do código do produto escolhido pelo usuário e da quantidade desejada.
  stdout.write('Digite o código do produto desejado: ');
  int codigoproduto = int.parse(stdin.readLineSync()!);
  stdout.write('Digite a quantidade desejada: ');
  quantidade = int.parse(stdin.readLineSync()!);

  // Cálculo do valor total a ser pago com base no código do produto escolhido pelo usuário e na quantidade desejada, exibindo o valor total a ser pago.
  stdout.write('O valor total a ser pago é: ');
  switch (codigoproduto) {
    case 101:
      valortotal = quantidade * 14.20;
      break;
    case 102:
      valortotal = quantidade * 12.30;
      break;
    case 103:
      valortotal = quantidade * 13.50;
      break;
    case 104:
      valortotal = quantidade * 10.20;
      break;
    case 105:
      valortotal = quantidade * 15.30;
      break;
    case 106:
      valortotal = quantidade * 10.00;
      break;
    default:
      stdout.write('Código do lanche inválido.');
      return;
  }

  // Exibição do valor total a ser pago.
  stdout.write('R\$ $valortotal reais.');
}