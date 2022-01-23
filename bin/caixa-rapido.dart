import 'dart:async';
import 'dart:io';
import 'dart:convert';

void caixa(int value) {
  // Escreva seu programa a partir daqui
  int notasReservasDe5 = 0;
  int notasDe5 = 0;

  if (value % 5 == 1 || value % 5 == 3) {
    value -= 5;
    notasReservasDe5++;
  }

  int notasDe100 = value ~/ 100;
  value %= 100;
  int notasDe50 = value ~/ 50;
  value %= 50;
  int notasDe20 = value ~/ 20;
  value %= 20;
  int notasDe10 = value ~/ 10;
  value %= 10;

  if (notasReservasDe5 > 0) {
    notasDe5 = value ~/ 5;
    notasDe5 += notasReservasDe5;
  } else {
    notasDe5 = value ~/ 5;
  }

  value %= 5;

  if (value == 3 || value == 1) {
    notasDe5--;
    value += 5;
  }

  int notasDe2 = value ~/ 2;
  value %= 2;

  var text = '';

  if (notasDe100 > 0) text += '$notasDe100 de 100';

  if (notasDe50 > 0) {
    text == '' ? text += '$notasDe50 de 50' : text += ', $notasDe50 de 50';
  }

  if (notasDe20 > 0) {
    text == '' ? text += '$notasDe20 de 20' : text += ', $notasDe20 de 20';
  }

  if (notasDe10 > 0) {
    text == '' ? text += '$notasDe10 de 10' : text += ', $notasDe10 de 10';
  }

  if (notasDe5 > 0) {
    text == '' ? text += '$notasDe5 de 5' : text += ', $notasDe5 de 5';
  }

  if (notasDe2 > 0) {
    text == '' ? text += '$notasDe2 de 2' : text += ', $notasDe2 de 2';
  }

  print(text);
}

// Nao deletar
void main() => readLine().listen(processLine);

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) => caixa(int.parse(line.split(' ').first));

/// Test Cases
///
/// 355 -> 3 de 100, 1 de 50, 1 de 5
/// 1186 -> 11 de 100, 1 de 50, 1 de 20, 1 de 10, 3 de 2
/// 81 -> 1 de 50, 1 de 20, 1 de 5, 3 de 2
/// 187 -> 1 de 100, 1 de 50, 1 de 20, 1 de 10, 1 de 5, 1 de 2
/// 763 -> 7 de 100, 1 de 50, 1 de 5, 4 de 2
/// 6 -> 3 de 2
/// 11 -> 7 de 100, 1 de 50, 1 de 5, 4 de 2

/*

Os caixas de autoatendimento de um banco precisam ser muito eficientes para o 
melhor uso das cédulas de dinheiro. Você foi convidado para criar um algoritmo 
para utilizar o menor número possível de cédulas de 100, 50, 20, 10, 5 e 2. 
Dado que o usuário deseja fazer um saque de um valor inteiro (0 centavos), 
nosso programa precisa emitir quantas notas serão necessárias de cada cédula.

Dica: Prestem atenção em valores terminados com 1 e 3, já que nosso caixa não 
possui cédulas de 1. Uma das formas de resolver esse problema é verificando o 
resto da divisão por 5.

Input Format

Um número inteiro maior que 5.

Constraints

-

Output Format

Utilize o de para unir a quantidade com o valor da cédula, por exemplo: 
3 de 100, 1 de 50, 1 de 5 No exemplo acima, não exibir 0 de 20 ou 0 de 10.

Sample Input 0

355
Sample Output 0

3 de 100, 1 de 50, 1 de 5

*/