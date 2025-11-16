import 'package:imc/imc.dart';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  void calcularIMC() {
    var valor = peso / (altura * altura);
    Imc i = Imc();
    print("O IMC de $nome é: ${valor.toStringAsFixed(2)}. Status: ${i.classificar(valor)}");
  }
}
