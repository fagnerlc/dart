void main(){
  print('01.2) Variaveis Funcoes');

  num pi = 3.14;
  print('1 floor: ${pi.floor()}'); //
  print('2 round: ${pi.round()}'); //
  print('3 ceil: ${pi.ceil()}'); //
  print('4 clamp: ${pi.clamp(3, 3.1)}'); //
  print('5 compareTo: ${pi.compareTo(3)}'); //
  print('6 remainder: ${pi.remainder(3)}'); //
  print('7 toInt: ${pi.toInt()}'); //
  print('8 toDouble: ${2.toDouble()}');
  print('9 toString: ${pi.toString()}'); //
  print('10 toStringAsFixed: ${pi.toStringAsFixed(1)}'); //
  print('11 truncate: ${pi.truncate()}'); //
  print('12 isNegative: ${pi.isNegative}'); //
  print('13 isInfinite: ${pi.isInfinite}'); //
  print('14 isInfinite: ${(pi / 0).isInfinite}'); //
  print('15 gcd: ${12.gcd(16)}'); //
  print('16 padLeft: ' + '1'.padLeft(2, '0'));

  print('');

  String nome = "Fagner";
  String nomeCompleto = "\t Fagner Lopes";
  print('17 toLowerCase: ' + nome.toLowerCase()); // letras minusculas
  print('18 toUpperCase: ' + nomeCompleto.toUpperCase()); // letras maiusculas
  print('19 : ${nomeCompleto.split(' ')}');
  print('20 : ${nome.split('')}');
  print('21 substring: ' + nome.substring(3, 6));
  print('22 : ${nome.startsWith('F')}');
  print('23 : ${nome.startsWith('gner',2)}');
  print('24 replaceAll: ' + nome.replaceAll('a', 'o'));
  print('25 replaceFirst: ' + nome.replaceFirst('Fag', ''));
  print('26 replaceFirst: ' + nome.replaceFirst('r', 'a', 5));
  print('27 replaceRange: ' + nome.replaceRange(3, 5, ''));
  print('28 : ${nomeCompleto.trim().split(' ')}');
  print('29 : ${nome.contains('f')}');
  print('30 : ${nome.contains('a', 1)}');
  print('31 indexOf: ${nome.indexOf('gner')}');
  print('32 : ${nome.length}');
  print('33 : ${nome.endsWith('r')}');
  print('34 : ${nome.compareTo('Fagner')}');
  print('35 : ${nome.compareTo('Fag')}');
  print('36 : ${nome.compareTo('Lorena')}');
  print('37 : ${nome.isEmpty}');
  print('38 : ${''.isEmpty}');
  String sd = '12.55';
  double ds;
  ds = double.parse(sd);
  print(ds);
  print('39 : ${double.parse(sd)}');
  print('40 : ${double.parse('12.55')}');
  print('41 : ${'1' is String}');
  print('42 : ${int.parse('12') is int}');
  print('43 : ${nome.lastIndexOf('a')}');
  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é ${sopa.substring(index).trim()}');

  print('');

  num numero = 3.14;
  print('44 : ${numero is double}');
  print('45 : ${numero is! double}');

}