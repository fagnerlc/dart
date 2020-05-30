/**
 *  * Datetime
 *    - é uma classe com construtores para definir segundos, hora, dias e anos
 *  * Duration
 *    - é uma classe usada para definir um determinado tempo  
 */

String tempoAgora() {
  DateTime tempo = DateTime.now();
  String hora =
      '${tempo.hour}:${tempo.minute}:${tempo.second}:${tempo.microsecond}';
  return hora;
}

main(List<String> args) {
  print('21.1) DateTime\n');

  print('Compilado as ${tempoAgora()}');
  var p1 = Pessoa('Fagner', 15, 1, 1987, horas: 19, minutos: 7);
  print(p1);
}

class Pessoa {
  String nome;
  DateTime _data, _nascimento, _agora = DateTime.now();

  Pessoa(this.nome, int diaNasc, int mesNasc, int anoNasc,
      {int horas = 0, int minutos = 0}) {
    this._nascimento = DateTime.utc(anoNasc, mesNasc, diaNasc, horas, minutos);
    print(
        '$nome nascido em $diaNasc/$mesNasc/$anoNasc ${diaSemana(_nascimento.weekday)} as $horas:$minutos ano ${bissexto(anoNasc)}');
    fecundacao();
    tempo();
  }

  fecundacao() {
    int gestacaoMedia = 268;
    _data = _nascimento.subtract(Duration(days: gestacaoMedia));
    print(
        'Data estimada da fecundacao: ${_data.day}/${_data.month}/${_data.year} ${diaSemana(_nascimento.weekday)}');
  }

  tempo() {
    print('''
    Tem ${idade().toStringAsFixed(0)} anos e esta vivo a:
    ${_agora.difference(_nascimento).inDays} dias...
    ${_agora.difference(_nascimento).inHours} horas...
    ${_agora.difference(_nascimento).inMinutes} minutos...
    ${_agora.difference(_nascimento).inSeconds} segundos...
    ''');
  }

  String bissexto(int ano) => (ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0)
      ? 'é bissexto'
      : 'não é bissexto';
  double idade() => _agora.difference(_nascimento).inDays / 365;
  String diaSemana(int dia) {
    switch (1) {
      case 1:
        return 'domingo';
        break;
      case 2:
        return 'segunda-feira';
        break;
      case 3:
        return 'terca-feira';
        break;
      case 4:
        return 'quarta-feira';
        break;
      case 5:
        return 'quinta-feira';
        break;
      case 6:
        return 'sexta-feira';
        break;
      case 7:
        return 'sábado';
        break;
      default:
        'não existe este dia na semana!';
    }
  }
}
