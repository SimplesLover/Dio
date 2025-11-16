import 'package:imc/imc.dart';

class Pessoa {
  String nome;
  double peso;
  double altura;
  String IMC;

  Pessoa(this.nome, this.peso, this.altura) :
    IMC = Imc.calcularIMC(peso, altura);
}
