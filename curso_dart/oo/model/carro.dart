// alteração fagner

class Carro {
  int velocidadeMaxima;
  int _velocidadeAtual;

  Carro([this._velocidadeAtual = 0, this.velocidadeMaxima = 270]);

  int get velocidadeAtual{
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade){
    this._velocidadeAtual = novaVelocidade;
  }

  int acelerar() {
    if (_velocidadeAtual <= velocidadeMaxima) {
      _velocidadeAtual = _velocidadeAtual + 5;
    }
    return _velocidadeAtual;
  }

  int frear() {
    if (_velocidadeAtual >= 0) {
      _velocidadeAtual = _velocidadeAtual - 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite() {
    bool noLimite;
    if (_velocidadeAtual == velocidadeMaxima) {
      noLimite = true;
    } else {
      noLimite = false;
    }
    return noLimite;
  }
}
