import '02_cidadao.dart';
import '03_presidenciavel.dart';
import '04_postagem.dart';


mixin Elegivel on Cidadao{
  bool elegivel = false;
  void prestacaoContas();

}
// Classe conta a baixo tbm é um mixin
abstract class Conta{
  double _saldo, salario = 33000;

  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo / 12 < salario;
}

// CLASSE CONCRETA
class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {

  String objetivo;
  Candidato(String nome, {this.ideologia, this.partido}) : super(nome){
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES Postagem
  @override
  String postagem;

  @override
  void escreverPostagem(){
    print('Postagem de $nome no facebook: $postagem');

  }

  // Interfaces Presidenciavel
  @override
  String partido;
  String ideologia;

  @override
  void ideologiaPolitica(){
    print('$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }
  
  // mixin
  @override
  void prestacaoContas(){
    elegivel = super.declaracaoRenda();
    if (elegivel){
      print('Candidato $nome passou na prestação de contas! \nAutorizado a concorrer nas eleições 2018!');
    } else {
      print('Candidato $nome foi barrado na prestação de contas!\nSaldo $saldo excede a renda declarada para presidente!');
    }
  }

}