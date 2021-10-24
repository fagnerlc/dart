import '02_cidadao.dart';
import '03_presidenciavel.dart';
import '04_postagem.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;
  Candidato(String? nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES Postagem
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  // Interfaces Presidenciavel
  @override
  String? partido;
  String? ideologia;

  @override
  void ideologiaPolitica() {
    print(
        '$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }
}
