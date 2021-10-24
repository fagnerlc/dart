class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, this.cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  Usuario.admin(this.user, this.senha, {this.nome, this.cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = 'Administrador';
    print(
        'Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  void autenticar() {
    // dados recuperado do banco de dados
    var user = 'flc@gmail.com';
    var senha = '1234567';
    (this.user == user && this.senha == senha)
        ? print('Usuario autenticado')
        : print('Usuario não autenticado');
  }
}
