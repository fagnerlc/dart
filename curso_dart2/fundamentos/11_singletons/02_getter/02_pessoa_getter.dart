class PessoaGetter{
  static final PessoaGetter _isntance = PessoaGetter._construtorNomeado(); 
  String nome;

  PessoaGetter._construtorNomeado();

  static PessoaGetter get instance {
    return _isntance;
  }
}