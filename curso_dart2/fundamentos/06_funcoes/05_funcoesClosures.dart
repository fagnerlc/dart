///
/// Uma Closure ocorre quando uma funcao é declarada dentro do corpo de outra funcao!
/// Podendo retornar as variaveis locais e da funcao superior
///

funcaoClosures() {
  print('06.5.1) Closure sem retorno\n');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Ola $nome! $complemento');
    mensagem('Seja bem vindo!');
  };

  print(saudacao);
  saudacao('Fagner');

  print('\n06.5.2 Closures com retorno\n');

  Function somar(int valorA) {
    print(valorA);
    return (double valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9);
  var descontarVinte = porcentagem(.8);
  print(descontarDez(100));
  print(descontarVinte(200));

  print('\n06.5.3 Closures com Objetos\n');

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      // 1 return 'id: ${(++id).toString().padLeft(2,'0')} nome: $nome, descricao: $descricao'; // retorna array
      // 2 return {'id': (++id).toString().padLeft(2,'0'), 'nome' : nome, 'descricao': descricao};
      return Objeto.fromMap({
        'id': (++id).toString().padLeft(2, '0'),
        'nome': nome,
        'descricao': descricao
      });
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Fagner', 1.99)];
  listaObjetos.add(objeto('iPhone', 3000.00));
  listaObjetos.add(objeto('Fones', 100));

  for (var objeto in listaObjetos) {
    // 1 print(objeto.substring(7));
    // 2 print(objeto.map((c, v) => MapEntry(c, (v is double) ? '${descontarDez(v)}' : v)));
    print((objeto.descricao is num)
        ? descontarVinte(objeto.descricao)
        : objeto.descricao);
  }
}

class Objeto {
  String? id, nome;
  dynamic descricao;
  Objeto({this.id, this.nome, this.descricao});
  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

main(List<String> args) {
  funcaoClosures();
}
