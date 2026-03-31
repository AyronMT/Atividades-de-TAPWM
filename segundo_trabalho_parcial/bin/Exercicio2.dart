import 'dart:io';

void main() {
  double Valorfinal = 0;

  stdout.write('Digite o preço do produto: ');
  double preco = double.parse(stdin.readLineSync()!);

  stdout.write('\n \n-------Codigos de Origem-------\n');
  stdout.write('1 - Norte\n');
  stdout.write('2 - Sul\n');
  stdout.write('3 - Sudeste\n');
  stdout.write('4 - Nordeste\n');
  stdout.write('5 - Centro-Oeste\n');
  stdout.write('Digite o código de origem do produto: ');
  int codigoOrigem = int.parse(stdin.readLineSync()!);

  if (codigoOrigem == 1) {
    Valorfinal = preco * 0.95;
    stdout.write('Você escolheu a opção Norte. Um desconto de 5% será aplicado ao preço do produto.\n$preco * 0.95 . . . \n \n \n');
  }
  
  else if(codigoOrigem == 2) {
    Valorfinal = preco * 0.85;
    stdout.write('Você escolheu a opção Sul. Um desconto de 15% será aplicado ao preço do produto.\n$preco * 0.85 . . . \n \n \n');
  } 
  
  else if(codigoOrigem == 3) {
    Valorfinal = preco * 0.93;
    stdout.write('Você escolheu a opção Sudeste. Um desconto de 7% será aplicado ao preço do produto.\n$preco * 0.93 . . . \n \n \n');

  } 
  
  else if(codigoOrigem == 4) {
    Valorfinal = preco * 0.88;
    stdout.write('Você escolheu a opção Nordeste. Um desconto de 12% será aplicado ao preço do produto.\n$preco * 0.88 . . . \n \n \n');

  } 
  
  else if(codigoOrigem == 5) {
    Valorfinal = preco * 0.80;
    stdout.write('Você escolheu a opção Centro-Oeste. Um desconto de 20% será aplicado ao preço do produto.\n$preco * 0.80 . . . \n \n \n');

  } 
  
  else {
    Valorfinal = preco;
    stdout.write('Observação: Código de origem resultou em um resultado importado. Nenhum desconto será aplicado.');
  }
    
  stdout.write('O valor final do produto é: $Valorfinal reais.');
}