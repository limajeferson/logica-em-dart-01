import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final num1 = int.parse(inputs[0]);
  final num2 = int.parse(inputs[1]);
  final num3 = int.parse(inputs[2]);

  // Escreva seu programa a partir daqui
  List crescente = [num1, num2, num3];

  crescente.sort();

  print(num1 == num2 || num2 == num3 || num3 == num1
      ? 'Entre apenas numeros diferentes'
      : '${crescente[2]} ${crescente[1]} ${crescente[0]}');

  /* 
  print(num1 == num2 || num2 == num3 || num3 == num1
      ? 'Entre apenas numeros diferentes'
      : num1 > num2 && num1 > num3
          ? num2 > num3
              ? '$num1 $num2 $num3'
              : '$num1 $num3 $num2'
          : num2 > num3 && num2 > num1
              ? num1 > num3
                  ? '$num2 $num1 $num3'
                  : '$num2 $num3 $num1'
              : num3 > num2 && num3 > num1
                  ? num2 > num1
                      ? '$num3 $num2 $num1'
                      : '$num3 $num1 $num2'
                  : null);
  */
}

/// Test Cases
///
/// 5 3 9 -> 9 5 3
/// 1 7 12 -> 12 7 1
/// 2 19 3 -> 19 3 2
/// 2 4 1 -> 4 2 1
/// 10 6 2 -> 10 6 2
/// 9 5 7 -> 9 7 5
/// 2 2 2 -> Entre apenas numeros diferentes

/*

Uma vez que 3 números sejam adicionados ao seu programa, nós precisamos fazer a 
ordenação em ordem decrescente.

Caso algum número repetido seja adicionado, o programa deve exibir a mensagem 
de erro "Entre apenas numeros diferentes".

Input Format

3 números inteiros

Constraints

-

Output Format

Se for possível ordenar: 4 2 1 Caso não: Entre apenas numeros diferentes

Sample Input 0

5 3 9
Sample Output 0

9 5 3

*/
