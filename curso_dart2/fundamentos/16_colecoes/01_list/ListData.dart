String calculaSaidaLocal(
  List<DateTime> dia,
  DateTime previsaoSaida,
) {
  print('\n1) Calcula saída com datas:\n');

  DateTime pausa;
  DateTime retorno;
  Duration intervalo;
  print('Previsão Saida INICIAL: ${previsaoSaida}');

  if (dia.length != 0) {
    if (dia.first != -1 && dia.length == 1) {
      previsaoSaida = dia[0];
      previsaoSaida = previsaoSaida.add(Duration(hours: 9));
      print('1 - DENTRO DO IF 1!');
    }

    if (dia.length == 2) {
      if (dia[1] != null) pausa = dia[1];
      print('2 - DENTRO DO IF 1!');
    }
    if (dia.length >= 2 && dia.length % 2 == 0) {
      pausa = dia.last;
      print('3 - DENTRO DO IF 1!');
    } else if (dia.length >= 2 && dia.length % 2 == 1) {
      pausa = dia[dia.length - 2];
      print('3 - DENTRO DO ELSE IF 2!');
    }

    if (dia.length > 2 && dia.length % 2 == 1) {
      retorno = dia.last;
      print('4 - DENTRO DO IF 1!');
      //intervalo = (retorno - pausa) * -1;
      intervalo = retorno.difference(pausa);
      //if (intervalo < 0) intervalo = (retorno - pausa);
      if (intervalo.inMinutes < 0) intervalo = retorno.difference(pausa) * -1;
      if (intervalo.inMinutes < 60 && dia.length == 3) {
        //previsaoSaida = previsaoSaida - intervalo;
        previsaoSaida = previsaoSaida.subtract(intervalo);
        print('4 - DENTRO DO IF 2!');
      } else if (intervalo.inMinutes > 60 && dia.length == 3) {
        //previsaoSaida = previsaoSaida + intervalo;
        previsaoSaida = previsaoSaida.add(intervalo);
        print('4 - DENTRO DO ELSE IF 3!');
      } else {
        //previsaoSaida = previsaoSaida + intervalo;
        previsaoSaida = previsaoSaida.add(intervalo);
        print('4 - DENTRO DO ELSE IF 6!');
      }
    } else if (dia.length > 2 && dia.length % 2 == 0) {
      retorno = dia[dia.length - 2];
      intervalo = (retorno.difference(pausa));
      if (intervalo.inMinutes < 0) {
        intervalo = (retorno.difference(pausa)) * -1;
        print('5 - DENTRO DO IF 2!');
      }

      if (intervalo.inMinutes < 60 && dia.length == 3) {
        //previsaoSaida = previsaoSaida - intervalo;
        previsaoSaida = previsaoSaida.subtract(intervalo);
        print('5 - DENTRO DO IF 3!');
      } else if (intervalo.inMinutes < 60 && dia.length == 3) {
        //previsaoSaida = previsaoSaida + intervalo - 1;
        previsaoSaida =
            previsaoSaida.add(intervalo).subtract(Duration(minutes: 60));
        print('5 - DENTRO DO ELSE IF 4!');
      } else {
        if (intervalo.inMinutes > 0) {
          //previsaoSaida = previsaoSaida + intervalo;
          print('5 - DENTRO DO ELFE 5!');
        }
        ;
      }
      print('5 - DENTRO DO IF 1!');
    }

    print('Tamanho da lista Dia: ${dia.length}');
    print('pausa: $pausa');
    print('retorno: $retorno');
    print('intervalo: $intervalo');
    print('Ultima previsão de saída: ${previsaoSaida}');
    return 'Previsão de saída FINAL: $previsaoSaida';
  } else {
    previsaoSaida = null;
    print('previsaoSaida FINAL: $previsaoSaida');
    return '$previsaoSaida';
  }
}

main(List<String> args) {
  List<DateTime> registros = [
    DateTime.parse("2020-11-27 09:00:00Z"), // ENTRADA
    DateTime.parse("2020-11-27 11:30:00Z"), // PAUSA
    //DateTime.parse("2020-11-27 12:00:00Z"), // RETORNO
    //DateTime.parse("2020-11-27 13:00:00Z"), // PAUSA
    //DateTime.parse("2020-11-27 14:00:00Z"), // RETORNO
    //DateTime.parse("2020-11-27 15:00:00Z"), // PAUSA
    //DateTime.parse("2020-11-27 15:30:00Z"), // RETORNO
    //DateTime.parse("2020-11-27 16:00:00Z"), // PAUSA
    //DateTime.parse("2020-11-27 16:30:00Z"), // RETORNO
  ];
  List<DateTime> previsaoSaida = [
    //DateTime.parse("2020-11-27 00:00:00Z"), // PREVISAO SAÍDA
    DateTime.parse("2020-11-27 18:00:00Z"), // PREVISAO SAÍDA
    //DateTime.parse("2020-11-27 17:30:00Z"), // PREVISAO SAÍDA
    //DateTime.parse("2020-11-27 18:30:00Z"), // PREVISAO SAÍDA
    //DateTime.parse("2020-11-27 19:00:00Z"), // PREVISAO SAÍDA
  ];
  calculaSaidaLocal(registros, previsaoSaida.last);
}
