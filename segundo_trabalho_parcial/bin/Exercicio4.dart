import 'dart:io'; 

void main() {
  // Coleta do nome do estado do usuário.
  stdout.write('Digite o nome do seu estado (utilize acentos): ');
  String estado = stdin.readLineSync()!.toLowerCase();

  // Verificação do estado do usuário e exibição da região correspondente.
  // Se for estado do Norte (verificando um por um), exibir "O seu estado é da região Norte."
  if (estado == 'acre' || estado == 'amapá' || estado == 'amazonas' || estado == 'pará' || estado == 'rondônia' || estado == 'roraima' || estado == 'tocantins') {
    stdout.write('O seu estado é da região Norte.');
  } 
  
  // Se for estado do Nordeste (verificando um por um), exibir "O seu estado é da região Nordeste."
  else if (estado == 'alagoas' || estado == 'bahia' || estado == 'ceará' || estado == 'maranhão' || estado == 'paraíba' || estado == 'pernambuco' || estado == 'piauí' || estado == 'rio grande do norte' || estado == 'sergipe') {
    stdout.write('O seu estado é da região Nordeste.');
  } 
  
  // Se for estado do Centro-Oeste (verificando um por um), exibir "O seu estado é da região Centro-Oeste."
  else if (estado == 'goiás' || estado == 'mato grosso' || estado == 'mato grosso do sul' || estado == 'distrito federal') {
    stdout.write('O seu estado é da região Centro-Oeste.');
  } 
  
  // Se for estado do Sudeste (verificando um por um), exibir "O seu estado é da região Sudeste."
  else if(estado == 'espírito santo' || estado == 'minas gerais' || estado == 'rio de janeiro' || estado == 'são paulo') {
    stdout.write('O seu estado é da região Sudeste.');
  } 
  
  // Se for estado do Sul (verificando um por um), exibir "O seu estado é da região Sul."
  else if (estado == 'paraná' || estado == 'santa catarina' || estado == 'rio grande do sul') {
    stdout.write('O seu estado é da região Sul.');
  } 
  
  // Se o estado do usuário não for encontrado em nenhuma das regiões, exibir "Estado desconhecido."
  else {
    stdout.write('Estado desconhecido.');
  }
}