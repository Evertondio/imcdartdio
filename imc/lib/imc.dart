int calculate() {
  return 6 * 7;
}

enum condicao {
  menor16,
  entre16_17,
  entre17_18_5,
  entre18_5_25,
  entre25_30,
  entre30_35,
  entre35_40,
  maiorigual40
}
Map<String, String> tipo = {
  condicao.menor16.name: 'Magreza grave',
  condicao.entre16_17.name: 'Magreza moderada',
  condicao.entre17_18_5.name: 'Magreza leve',
  condicao.entre18_5_25.name: 'Saudável',
  condicao.entre25_30.name: 'Sobrepeso',
  condicao.entre30_35.name: 'Obesidade Grau 1',
  condicao.entre35_40.name: 'Obesidade Grau 2 (Severa)',
  condicao.maiorigual40.name: 'Obesidade Grau 3 (mórbida)'
};

String calcularIMC(double peso, double altura) {
  double imc = peso / (altura * altura);

  if (imc < 16) {
    return tipo[condicao.menor16.name].toString();
  } else if (imc >= 16 && imc < 17) {
    return tipo[condicao.entre16_17.name].toString();
  } else if (imc > 17 && imc < 18.5) {
    return tipo[condicao.entre17_18_5.name].toString();
  } else if (imc > 18.5 && imc < 25) {
    return tipo[condicao.entre18_5_25.name].toString();
  } else if (imc > 25 && imc < 30) {
    return tipo[condicao.entre25_30.name].toString();
  } else if (imc > 30 && imc < 35) {
    return tipo[condicao.entre30_35.name].toString();
  } else if (imc < 35 && imc < 40) {
    return tipo[condicao.entre35_40.name].toString();
  } 
//para resultado maior ou igual que 40
  return tipo[condicao.maiorigual40.name].toString();
}
