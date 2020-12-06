String calculaSaidaLocal(List<DateTime> registros) {
  print('\n1) Calcula saída com datas:\n');
  DateTime almoco;
  DateTime pausa;
  DateTime retorno;
  Duration intervalo;
  Duration intervaloAlmoco;
  DateTime previsaoSaida;
  List<String> regis;
  DateTime.parse(regis[0]);
  print('Previsão Saida INICIAL: ${previsaoSaida}');

  if (registros.length != 0) {
    if (registros.length < 4) {
      if (registros.first != -1) {
        previsaoSaida = registros[0];
        previsaoSaida = previsaoSaida.add(Duration(hours: 9));
      }
      if (registros.length == 2 && registros.length % 2 == 0) {
        previsaoSaida = null;
      }
      if (registros.length == 3 && registros.length % 2 == 1) {
        almoco = registros[registros.length - 2];
        retorno = registros.last;
        intervaloAlmoco = almoco.difference(retorno) <= Duration(hours: 0)
            ? retorno.difference(almoco) + (Duration(hours: -1))
            : almoco.difference(retorno) >= Duration(hours: 0)
                ? almoco.difference(retorno)
                : null;

        previsaoSaida = previsaoSaida.add(intervaloAlmoco);
      }
      print('INTERVALO ALMOÇO: $intervalo');
      print('INTERVALO ALMOÇO: $intervaloAlmoco');
    }

    if (registros.length >= 4 && registros.length % 2 == 1) {
      previsaoSaida = registros[0];
      almoco = registros[1];
      retorno = registros[2];

      intervaloAlmoco = almoco.difference(retorno) <= Duration(hours: 0)
          ? retorno.difference(almoco) + (Duration(hours: -1))
          : almoco.difference(retorno) >= Duration(hours: 0)
              ? almoco.difference(retorno)
              : null;
      print('INTERVALO ALMOÇO intervaloAlmoco: $intervaloAlmoco');

      print('INTERVALO intervalo: $intervalo');
      previsaoSaida = previsaoSaida.add(Duration(hours: 9) + intervaloAlmoco);

      for (var i = 0; i < (registros.length / 2 - 1.5) * 2; i = i + 2) {
        if (i == 0) {
          pausa = registros[i + 3];
          retorno = registros[i + 4];
          intervalo = retorno.difference(pausa);
        } else {
          print('${(i + 4) % 2 == 0 ? (i + 3) : (i + 2)}');
          pausa = registros[(i + 2) % 2 == 0 ? (i + 3) : (i + 2)];
          print('${(i + 3) % 2 == 1 ? (i + 4) : (i + 3)}');
          retorno = registros[(i + 3) % 2 == 1 ? (i + 4) : (i + 3)];
          intervalo = retorno.difference(pausa) + intervalo;
        }
        print('PREVISAO SAIDA: $previsaoSaida');
      }
      previsaoSaida = previsaoSaida.add(intervalo);
    } else if (registros.length >= 4) {
      previsaoSaida = null;
    }
////////////////////////////////////////////////////////////////////////////////////////////

    print('Tamanho da lista REGISTRO: ${registros.length}');
    print('Último REGISTRO: ${registros.last}');
    print('pausa: $pausa');
    print('retorno: $retorno');
    print('intervalo: $intervalo');
    print('Ultima previsão de saída: ${previsaoSaida}');
    print('${registros.length / 2 - 1.5}');
    return 'Previsão de saída FINAL: $previsaoSaida';
  } else {
    previsaoSaida = null;
    print('previsaoSaida FINAL: $previsaoSaida');
    return '$previsaoSaida';
  }
}

main(List<String> args) {
  List<DateTime> registros = [
    DateTime.parse("2020-11-27 09:00:00Z"), // ENTRADA 1
    DateTime.parse("2020-11-27 11:20:00Z"), // PAUSA 2
    DateTime.parse("2020-11-27 11:50:00Z"), // RETORNO 3 SAIDA 17:30
    DateTime.parse("2020-11-27 13:00:00Z"), // PAUSA 4
    DateTime.parse("2020-11-27 14:00:00Z"), // RETORNO 5 SAIDA 18:30
    DateTime.parse("2020-11-27 15:00:00Z"), // PAUSA 6
    DateTime.parse("2020-11-27 15:35:00Z"), // RETORNO 7 SAIDA 19:05
    DateTime.parse("2020-11-27 16:00:00Z"), // PAUSA 8
    DateTime.parse("2020-11-27 16:30:00Z"), // RETORNO 9 SAIDA 19:35
    DateTime.parse("2020-11-27 17:00:00Z"), // PAUSA 10
    DateTime.parse("2020-11-27 17:35:00Z"), // RETORNO 11 SAIDA 20:10
    DateTime.parse("2020-11-27 17:40:00Z"), // PAUSA 12
    DateTime.parse("2020-11-27 17:55:00Z"), // RETORNO 13 SAIDA 20:25
  ];

  calculaSaidaLocal(registros);
}
