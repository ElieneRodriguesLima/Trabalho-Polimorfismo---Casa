class Ingresso {
  double valor;
  bool validade;

  Ingresso(this.valor, this.validade);

  bool usar() {
    if (validade) {
      validade = false;
      return true;
    } else {
      return false;
    }
  }
}

class IngressoVIP extends Ingresso {
  double acrescimo;

  IngressoVIP(double valor, bool validade, this.acrescimo)
      : super(valor, validade);
}

void main() {
  Ingresso ingresso1 = Ingresso(10.0, true);
  Ingresso ingresso2 = Ingresso(8.0, true);

  print(ingresso1.usar()); 
  print(ingresso1.validade); 

  print(ingresso2.usar()); 
  print(ingresso2.validade); 

  print(ingresso1.usar()); 

  IngressoVIP vipIngresso1 = IngressoVIP(20.0, true, 5.0);
  IngressoVIP vipIngresso2 = IngressoVIP(15.0, true, 3.0);

  print(vipIngresso1.usar()); 
  print(vipIngresso1.validade); 

  print(vipIngresso2.usar()); 
  print(vipIngresso2.validade); 

  print(vipIngresso1.usar()); 
}
