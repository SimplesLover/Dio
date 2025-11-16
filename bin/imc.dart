import 'package:imc/Pessoa.dart';
import 'dart:io';

void main(List<String> arguments) {
  String nome = "";
  double peso = 0.0;
  double altura = 0.0;
  do{
    try {
      print("Digite o seu nome: ");
      nome = stdin.readLineSync() ?? "";

      print("Digite o seu peso: ");
      peso = double.parse(stdin.readLineSync() ?? "");

      print("Digite a sua altura: ");
      altura = double.parse(stdin.readLineSync() ?? "");

    } catch (e) {
      print("Erro: Formato inválido. Tente novamente...");
    }

  } while(nome.isEmpty || peso <= 0 || altura <= 0);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    pessoa.calcularIMC();
}
