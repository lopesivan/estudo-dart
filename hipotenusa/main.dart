import 'dart:math';

double calcularHipotenusa(double cateto1, double cateto2) {
  return sqrt(cateto1 * cateto1 + cateto2 * cateto2);
}

void main() {
  double cateto1 = 3;
  double cateto2 = 4;

  double hipotenusa = calcularHipotenusa(cateto1, cateto2);

  print('A hipotenusa é $hipotenusa');
}
