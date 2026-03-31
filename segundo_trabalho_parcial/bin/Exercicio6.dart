import 'dart:io';

void main() {
  stdout.write('Digite o lanche desejado: ');
  String lanche = stdin.readLineSync()!.toLowerCase();

  stdout.write('Qual a bebida que você deseja? ');
  String bebida = stdin.readLineSync()!.toLowerCase();

  if (lanche == 'bauru' && bebida == 'guaraná') {
    stdout.write('O lanche Bauru não pode ser acompanhado de Guaraná, tente novamente mais tarde.');
    return;
  } 
  
  else if (lanche == 'x frango' && bebida == 'água') {
    stdout.write('O lanche X Frango não pode ser acompanhado de Água, tente novamente mais tarde.');
    return;
  } 
  
  else if (!(lanche == 'pizza' && bebida == 'vinho' || lanche == 'pizza' && bebida == 'água')) {
    stdout.write('O lanche Pizza só pode ser acompanhado de Vinho ou Água, tente novamente mais tarde.');
    return;
  } 
  
  else {
    stdout.write('O lanche $lanche pode ser acompanhado de $bebida, bom apetite!');
  }
}