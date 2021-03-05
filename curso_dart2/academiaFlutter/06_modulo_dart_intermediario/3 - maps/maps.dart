main(List<String> args) {
  Map<String, String> paciente = Map();
//putIfAbsent adciona dentro do map se ausente
  paciente.putIfAbsent('nome', () => 'Fagner');
  paciente.putIfAbsent('idade', () => '34 anos');
  print(paciente);
  paciente.update('idade', (idade) => '40 anos');
  // se não existir a key'sexo para ser atualizado... cria a key sexo' com o ifAbsent
  paciente.update('sexo', (sexo) => 'Masculino',
      ifAbsent: () => 'Masculino Adicionado');
  print(paciente);
  print('O nome do paciente é ${paciente['nome']}');
  print('Tem ${paciente['idade']} anos');
  print('É do sexo ${paciente['sexo']}');

  // navegar por todos os elementos
  paciente.forEach((key, value) => print('Chave: $key , Valor: $value'));

  //for (var chave in paciente.keys) {
  //  print(chave);
  //}
  //for (var value in paciente.values) {
  //  print(value);
  //}

  var novoPaciente = paciente.map((chave, valor) {
    return MapEntry(chave, valor.toUpperCase());
  });
  print(novoPaciente);

  var mapa2 = Map<String, String>.from({'nome': 'Fagner'});
  print(mapa2);
  var mapa3 = {'nome': 'Fagner'};
  print(mapa3);

  var mapa4 = {'sexo': 'Masculino'};
  print(mapa4);
  mapa4.addAll(mapa2);
  print(mapa4);
  Map mapa5 = {
    'sexo': 'Masculino',
    'dados': {
      'valor': 1,
      'valor2': 2,
    }
  };
  print(mapa5);
  print(mapa5['dados']['valor']);
  //ou
  var mapa6 = {
    'sexo': 'Masculino',
    'dados': {
      'valor': 1,
      'valor2': 2,
    }
  }; // as Map;
  // ou
  var dados = mapa6['dados'] as Map;
  print(mapa6);
  print(dados['valor2']);
}
