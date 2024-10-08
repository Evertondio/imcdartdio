import 'package:imc/imc.dart' as imc;
import 'dart:io';

void main(List<String> arguments) {
  bool continuar = true;
  while (continuar) {
    print('\t\t\t\tBem vindo ao calculo do IMC \n\n\n\n\n\n');
    print('Favor informar seu nome: \n\n');
    String? nome = stdin.readLineSync();
    print('Favor informar a altura: \n\n');
    String? altura = stdin.readLineSync();
    print('Favor informar o peso: ');
    String? peso = stdin.readLineSync();

    print('Ficha tecnica \n\n\n\n\n');
    print('Resultado informa que : $nome');
    print(
        'é ${imc.calcularIMC(double.parse(peso.toString()), double.parse(altura.toString().replaceAll(',', '.')))}');
    print(
        'outra consulta ou encerrar o programa? S para sim ou qualquer tecla para não');
    String opcao = stdin.readLineSync().toString().toLowerCase();
    if (opcao == 's') {
      continuar = false;
    }

    // apagar tela preenchida
    print("\x1B[2J\x1B[0;0H");
  }
}
