import 'dart:async';

/**
 *  * Streams:
 *    - é uma forma de monitorar eventos. Ao adicionar eventos na stream os ouvintes serão notificados!
 *      > As streams fornecem uma sequencia assíncrona de dados. Para processar uma stream use o await() ou listen().
 *      > Exixtem dois tipos de stream: assinatura única(subscription) ou transmissão (broadcast).
 *      > Stream é uma sequencia com vários Futures! Ao invez de obter um evento solicitado(Future), a stream informa que há um evento quando está pronto.
 *      
 *  * stream:
 *    - Fluxo que a classe StreamController() está gerenciando.
 * 
 *  * add():
 *    - Adiciona eventos na stream notificando os ouvintes que estão monitorando!
 * 
 *  * listem():
 *    - Inscreve um ouvinte na stream para aguardar notificações de eventos.
 *      > onDate: Notifica o assistente com eventos de dados da stream, se for nulo, nada acontece.
 *      > onError: Tratamento de eventos com erro e possível rastreamento Stack Trace. Se omitido erros serão considerados exceptions!
 *      > onDone: Evento chamado quando a stream é fechada.
 *      >cancelOnError: A assinatura é cancelada automaticamente ao receber um evento erro!
 */

///
/// * CONCEITO
///

conceito() {
  print('18.4.1) Stream\n');

  var lista = List<dynamic>();

  //1) controlador
  var controlador = StreamController<dynamic>();

  //2) stream
  var stream = controlador.stream;

  //3) inscrição de ouvintes na stream
  stream.listen((event) {
    print('evento: $event');
    lista.add(event);
  }, onDone: () {
    print('Stream finalizada');
    print(lista);
  });

  //4) adcionar umevento a stream
  controlador.sink.add('Fagner');
  controlador.sink.add(36);
  controlador.sink.add(1.45);
  controlador.sink.add(true);
  controlador.close();

  print('Monitorando');
}

///
/// * MODEL
///

class Contador {
  var _contagem = 1, termino, erro;
  final _controlador = StreamController<int>();

  Sink<int> get sink =>
      _controlador.sink; // não expor o controlador, exponha as interfaces
  Stream<int> get stream => _controlador.stream;

  Contador({this.termino = 5, this.erro = 3}) {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _contagem < termino ? sink.add(_contagem) : sink.close();
      _contagem++;
      if (_contagem == erro) _controlador.addError('Erro intencional');
      if (_contagem > termino) timer.cancel();
    });
  }
}

model() {
  print('\n18.4.2) Model\n');

  // Stream
  var minhaStream = Contador(termino: 5, erro: 3)
      .stream
      .asBroadcastStream(); // asBroadcastStream() para mais de um ouvinte na stream

  // inscrição de ouvintes na stream
  final inscrito1 = minhaStream.listen(
      (event) {
        print('Inscrito1: $event');
      },
      onError: (erro) {
        print('Inscrito1: $erro');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito1 Completo!');
      });

  var pares = (e) => e % 2 == 0;
  var mapear = (e) => '$e é par';

  // modificar eventos
  final inscrito2 = minhaStream.where(pares).map(mapear).listen(
      (event) {
        print('Inscrito2: $event');
      },
      onError: (erro) {
        print('Inscrito2: $erro');
      },
      cancelOnError: false,
      onDone: () {
        print('Inscrito2 Completo!');
      });

  // gerenciar os inscritos
  for (var i = 1; i <= 3; i++) {
    Future.delayed(Duration(seconds: i), () {
      if (i == 1) inscrito1.pause();
      if (i == 2) inscrito1.resume();
      if (i == 3) inscrito1.cancel();
    });
  }
}

///
/// * METODOS
///

metodos() async {
  print('\n18.4.3) Stream Metodos e Ouvintes\n');
  var stream = Stream<dynamic>.periodic(Duration(seconds: 1), (e) => e + 1)
      .take(5) // take especifica quantos elementos eu quero pegar
      .asBroadcastStream(); 

  stream = stream
      .takeWhile((element) => element <= 5)
      .skipWhile((element) => element > 3)
      .take(3)
      .map((event) => event.toString().padLeft(2, '0'));

  // ouvintes
  stream.listen((event) {
    print('listen: $event');
  }, onDone: () {
    print('Contagem finalizada!');
  });
  //stream.forEach((element) {
  //  print('ForEache: $element');
  //});
//
  //await for (dynamic event in stream) {
  //  print('forIn: $event');
  //}

  //List<dynamic> eventos = await stream.toList();
  //print(eventos);

  Future<List<dynamic>> eventosFuturos = stream.toList();
  print(await eventosFuturos);
}

main() {
  //conceito();
  //model();
  metodos();
}
