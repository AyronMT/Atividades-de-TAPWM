import 'dart:io';

void main() {
  // Coleta do lanche e da bebida desejados pelo usuário.
  stdout.write('Digite o lanche desejado: ');
  String lanche = stdin.readLineSync()!.toLowerCase();

  stdout.write('Qual a bebida que você deseja? ');
  String bebida = stdin.readLineSync()!.toLowerCase();

  // Verificação das combinações de lanche e bebida, exibindo mensagens de acordo com as regras estabelecidas.
  // Se o lanche escolhido for Bauru e a bebida escolhida for Guaraná, exibir "O lanche Bauru não pode ser acompanhado de Guaraná, tente novamente mais tarde."
  if (lanche == 'bauru' && bebida == 'guaraná') {
    stdout.write('O lanche Bauru não pode ser acompanhado de Guaraná, tente novamente mais tarde.');
    return;
  } 
  
  // Se o lanche escolhido for X Frango e a bebida escolhida for Água, exibir "O lanche X Frango não pode ser acompanhado de Água, tente novamente mais tarde."
  else if (lanche == 'x frango' && bebida == 'água') {
    stdout.write('O lanche X Frango não pode ser acompanhado de Água, tente novamente mais tarde.');
    return;
  } 
  
  // Se o lanche escolhido for Pizza e a bebida escolhida não for Vinho nem Água, exibir "O lanche Pizza só pode ser acompanhado de Vinho ou Água, tente novamente mais tarde."
  else if (!(lanche == 'pizza' && bebida == 'vinho' || lanche == 'pizza' && bebida == 'água')) {
    stdout.write('O lanche Pizza só pode ser acompanhado de Vinho ou Água, tente novamente mais tarde.');
    return;
  } 
  
  // Se nenhuma regra foi violada, exibir "O lanche [lanche] pode ser acompanhado de [bebida], bom apetite!", substituindo [lanche] e [bebida] pelos valores escolhidos pelo usuário.
  else {
    stdout.write('O lanche $lanche pode ser acompanhado de $bebida, bom apetite!');
  }
}