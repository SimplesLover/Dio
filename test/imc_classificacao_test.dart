import 'package:imc/imc.dart';
import 'package:test/test.dart';
import 'package:imc/Pessoa.dart';

void main() {
  group('Classificação IMC', () {
    test('<16 Magreza grave', () {
      expect(Imc().classificar(15.9), "Magreza grave");
    });

    test('16 a <17 Magreza moderada', () {
      expect(Imc().classificar(16.5), "Magreza moderada");
    });

    test('17 a <18.5 Magreza leve', () {
      expect(Imc().classificar(17.5), "Magreza leve");
    });

    test('>=18.5 e <25 Saudável', () {
      expect(Imc().classificar(18.5), "Saudável");
      expect(Imc().classificar(24.9), "Saudável");  
    });

    test('>=25 e <30 Sobrepeso', () {
      expect(Imc().classificar(29.9), "Sobrepeso");
    });

    test('>=30 e <35 Obesidade Grau I', () {
      expect(Imc().classificar(34.9), "Obesidade Grau I");
    });

    test('>=35 e <40 Obesidade Grau II', () {
      expect(Imc().classificar(39.9), "Obesidade Grau II (severa)");
    });

    test('>=40 Obesidade Grau III', () {
      expect(Imc().classificar(40), "Obesidade Grau III (mórbida)");
    });
  });
}