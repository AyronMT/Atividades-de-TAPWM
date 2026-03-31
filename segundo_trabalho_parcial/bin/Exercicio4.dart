import 'dart:io'; 

void main() {
  stdout.write('Digite o nome do seu estado (utilize acentos): ');
  String estado = stdin.readLineSync()!.toLowerCase();

  if (estado == 'acre' || estado == 'amapá' || estado == 'amazonas' || estado == 'pará' || estado == 'rondônia' || estado == 'roraima' || estado == 'tocantins') {
    stdout.write('O seu estado é da região Norte.');
  } 
  
  else if (estado == 'alagoas' || estado == 'bahia' || estado == 'ceará' || estado == 'maranhão' || estado == 'paraíba' || estado == 'pernambuco' || estado == 'piauí' || estado == 'rio grande do norte' || estado == 'sergipe') {
    stdout.write('O seu estado é da região Nordeste.');
  } 
  
  else if (estado == 'goiás' || estado == 'mato grosso' || estado == 'mato grosso do sul' || estado == 'distrito federal') {
    stdout.write('O seu estado é da região Centro-Oeste.');
  } 
  
  else if(estado == 'espírito santo' || estado == 'minas gerais' || estado == 'rio de janeiro' || estado == 'são paulo') {
    stdout.write('O seu estado é da região Sudeste.');
  } 
  
  else if (estado == 'paraná' || estado == 'santa catarina' || estado == 'rio grande do sul') {
    stdout.write('O seu estado é da região Sul.');
  } 
  
  else {
    stdout.write('Estado desconhecido.');
  }
}