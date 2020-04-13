class Usuario {
  String usuario;
  String senha;

  void autenticar(){
    // Dados recuperados do banco de dados
    var usuario = 'flc@gmail.com';
    var senha = '1234567';

    if(this.usuario == usuario && this.senha == senha){
      print('Usuario autenticado!\n');
    } else {
      print('Usuário não autenticado!\n');
    }
  }
}
