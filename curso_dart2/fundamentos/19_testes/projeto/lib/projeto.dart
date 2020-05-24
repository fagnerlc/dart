int calculate() {
  return 7 * 7;
}

List<String> converterEmLista(String nome) {
  return nome.split(' ').toList();
  //return nome.split(' ').map((e) => e.toUpperCase()).toList();
}

String recuperarNome(List<String> nomes) {
  return nomes[0];
}

double restoDivisao(double a, double b) {
  return a.remainder(b);
}

String maiorIdade(int idade) {
  try {
    if (idade < 0) throw Exception('A idade nao pode ser negativa!');
    return idade < 14 ? 'Criança' : idade < 18 ? 'Adolecente' : 'Adulto';
  } catch (e) {
    print('Exceção: $e');
    return null;
  }
}
