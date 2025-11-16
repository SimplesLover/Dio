import 'package:test/test.dart';
import 'package:imc/Pessoa.dart';

void main() {
  group('Classificação IMC (Tabela Completa)', () {
    const double ALTURA_PADRAO = 1.8;

    // Magreza grave (IMC < 16)
    test('IMC < 16 -> Magreza grave', () {
      // Peso: 50.22 kg (IMC = 15.5)
      expect(Pessoa("Test1", 50.22, ALTURA_PADRAO).IMC, "Magreza grave");
    });

    // Magreza moderada (16 a < 17)
    test('IMC entre 16 e 17 -> Magreza moderada', () {
      // Peso: 55.08 kg (IMC = 17.0, logo 17.0 - 0.01)
      expect(Pessoa("Test2", 55.05, ALTURA_PADRAO).IMC, "Magreza moderada");
      // Testando o limite inferior (IMC = 16.0)
      expect(Pessoa("Test3", 51.84, ALTURA_PADRAO).IMC, "Magreza moderada");
    });

    // Magreza leve (17 a < 18.5)
    test('IMC entre 17 e 18.5 -> Magreza leve', () {
      // Peso: 58.32 kg (IMC = 18.0)
      expect(Pessoa("Test4", 58.32, ALTURA_PADRAO).IMC, "Magreza leve");
    });

    // Saudável (18.5 a < 25)
    test('IMC entre 18.5 e 25 -> Saudável', () {
      // Peso: 71.28 kg (IMC = 22.0)
      expect(Pessoa("Test5", 71.28, ALTURA_PADRAO).IMC, "Saudável");
    });

    // Sobrepeso (25 a < 30)
    test('IMC entre 25 e 30 -> Sobrepeso', () {
      // Peso: 89.10 kg (IMC = 27.5)
      expect(Pessoa("Test6", 89.10, ALTURA_PADRAO).IMC, "Sobrepeso");
    });

    // Obesidade Grau I (30 a < 35)
    test('IMC entre 30 e 35 -> Obesidade Grau I', () {
      // Peso: 105.30 kg (IMC = 32.5)
      expect(Pessoa("Test7", 105.30, ALTURA_PADRAO).IMC, "Obesidade Grau I");
    });

    // Obesidade Grau II (35 a < 40)
    test('IMC entre 35 e 40 -> Obesidade Grau II (severa)', () {
      // Peso: 121.50 kg (IMC = 37.5)
      expect(Pessoa("Test8", 121.50, ALTURA_PADRAO).IMC, "Obesidade Grau II (severa)");
    });

    // Obesidade Grau III (>= 40)
    test('IMC >= 40 -> Obesidade Grau III (mórbida)', () {
      // Peso: 145.80 kg (IMC = 45.0)
      expect(Pessoa("Test9", 145.80, ALTURA_PADRAO).IMC, "Obesidade Grau III (mórbida)");
    });
  });
}