/*
  * Conceito
    - Mixin permite implementar metodos e atributos de outras classes

  * Regras
    - Devem ser implementados antes das interfaces
    - Podem ser implementados a partir se uma classe concreta ou abstrata
    - Não pode implementar uma classe que estenda e extender se uma classe mixin
    - Pode implementar mais de um mixin, e nao é obrigatório usar todos metodos e atributos
    - As classes que possuem metodos iguais serão sobrescritas em rodem até a classe herdeira
  
  * ON
    - É obrigatório detectar sua classe como mixin.
    - Restringe o uso do mixin as classes que estendem ou implementam a classe declarada
*/

// CLASSE ABSTRATA

abstract class Artista{
  void acao(){
    print('Performista...');
  }
}

// MIXINS

mixin Cantor on Artista{
  void acao(){
    print('Canta');
  }
}

class Dancarino{
  void acao(){
    print('Danca');
  }
}


// INTERFACE
abstract class Acao{
  void executar();
}

// CLASSES CONCRETAS

class Musico extends Artista with Dancarino, Cantor implements Acao{
  void acao() => print('Compoe'); // comente para ver a hierarquia de sobrescritas!

  @override
  void executar() {
    super.acao();
    acao();
  }

}

// A classe MC nao pode cantar por que não extends de Artista

class MC with Dancarino implements Acao{
  void acao() => print('Mixa... coloca o batidão!'); 

  @override
  void executar() {
    super.acao();
    acao();
  }
}

main(){
  print('15.2) Mixin On');

  Musico musico = Musico();
  musico.executar(); // compoe

  print('');

  MC mc = MC();
  mc.executar(); // coloca o batidão
}