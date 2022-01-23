import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  double result;

  switch (operator) {
    case '*':
      result = number1 * number2;
      break;

    case '/':
      result = number1 / number2;
      break;

    case '-':
      result = number1 - number2;
      break;

    default:
      result = number1 + number2;
      break;
  }

  final resultAprox = result.toStringAsFixed(5);
  dynamic final1 = result ~/ 1;
  final final2 = result % 1;

  final2 != 0 ? print(double.parse(resultAprox)) : print(final1);
}

/// Test Cases
///
/// 2.2 + 4.6 -> 6.8
/// 9 - 2 -> 7
/// 3 * 10.45 -> 31.35
/// 1 / 7 -> 0.14286

/*

Você deverá construir uma calculadora simples, que ao receber dois números e um 
operador, exibe o resultado da operação.

Dica: para converter uma String para double, utilize double.parse().

Input Format

Duas variáveis double e um operador String

Constraints

1.  Operadores possíveis: +, -, *, /, onde o operador + é o default.
2.  Não exibir 0s desnecessários, por exemplo, se o resultado da operação for 2, 
    não exibir 2.00000, mas sim 2.
Output Format

Um número com no máximo 5 casas decimais.

Sample Input 0

2.2 + 4.6
Sample Output 0

6.8

*/

/* RESOLUCAO

/// Test Cases
///
/// 2.2 + 4.6 -> 6.8
/// 9 - 2 -> 7
/// 3 * 10.45 -> 31.35
/// 1 / 7 -> 0.14286

import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  double result;
  switch (operator) {
    case '-':
      result = number1 - number2;
      break;
    case '*':
      result = number1 * number2;
      break;
    case '/':
      result = number1 / number2;
      break;
    default:
      result = number1 + number2;
      break;
  }

  final resultAprox = result.toStringAsFixed(5);
  final resultInteiro = result ~/ 1;
  final resultResto = result % 1;

  if (resultResto > 0) {
    print(double.parse(resultAprox));
  } else {
    print(resultInteiro);
  }
}


*/