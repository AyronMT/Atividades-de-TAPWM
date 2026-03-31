import 'dart:io';

void main() {
  // Declaração da variável para armazenar o valor final do produto
  double Valorfinal = 0;

  // Coleta do preço do produto
  stdout.write('Digite o preço do produto: ');
  double preco = double.parse(stdin.readLineSync()!);

  // Exibição dos códigos de origem disponíveis para o produto e coleta do código de origem escolhido pelo usuário
  stdout.write('\n \n-------Codigos de Origem-------\n');
  stdout.write('1 - Norte\n');
  stdout.write('2 - Sul\n');
  stdout.write('3 - Sudeste\n');
  stdout.write('4 - Nordeste\n');
  stdout.write('5 - Centro-Oeste\n');
  stdout.write('Digite o código de origem do produto: ');
  int codigoOrigem = int.parse(stdin.readLineSync()!);

  // Cálculo do valor final do produto com base no código de origem escolhido pelo usuário, aplicando o desconto correspondente e exibindo o valor final do produto
  // Se o código  de origem for norte, o preço do produto terá um desconto de 5%.
  if (codigoOrigem == 1) {
    Valorfinal = preco * 0.95;
    stdout.write('Você escolheu a opção Norte. Um desconto de 5% será aplicado ao preço do produto.\n$preco * 0.95 . . . \n \n \n');
  }
  
  // Se o código de origem for sul, o preço do produto terá um desconto de 15%.
  else if(codigoOrigem == 2) {
    Valorfinal = preco * 0.85;
    stdout.write('Você escolheu a opção Sul. Um desconto de 15% será aplicado ao preço do produto.\n$preco * 0.85 . . . \n \n \n');
  } 
  
  // Se o código de origem for sudeste, o preço do produto terá um desconto de 7%.
  else if(codigoOrigem == 3) {
    Valorfinal = preco * 0.93;
    stdout.write('Você escolheu a opção Sudeste. Um desconto de 7% será aplicado ao preço do produto.\n$preco * 0.93 . . . \n \n \n');

  } 
  
  // Se o código de origem for nordeste, o preço do produto terá um desconto de 12%.
  else if(codigoOrigem == 4) {
    Valorfinal = preco * 0.88;
    stdout.write('Você escolheu a opção Nordeste. Um desconto de 12% será aplicado ao preço do produto.\n$preco * 0.88 . . . \n \n \n');

  } 
  
  // Se o código de origem for centro-oeste, o preço do produto terá um desconto de 20%.
  else if(codigoOrigem == 5) {
    Valorfinal = preco * 0.80;
    stdout.write('Você escolheu a opção Centro-Oeste. Um desconto de 20% será aplicado ao preço do produto.\n$preco * 0.80 . . . \n \n \n');

  } 
  
  // Se o código de origem for diferente dos códigos listados, o preço do produto não terá desconto.
  else {
    Valorfinal = preco;
    stdout.write('Observação: Código de origem resultou em um resultado importado. Nenhum desconto será aplicado.');
  }
    
  // Exibição do valor final do produto
  stdout.write('O valor final do produto é: $Valorfinal reais.');
}