class Ingresso {
  double preco;

  Ingresso(this.preco);

  double getPreco() {
    return preco;
  }
}

class IngressoVip extends Ingresso {
  double taxaAdicional;

  IngressoVip(double preco, this.taxaAdicional) : super(preco);

  double getPreco() {
    return super.getPreco() + taxaAdicional;
  }
}

class IngressoMeiaEntrada extends Ingresso {
  double desconto;

  IngressoMeiaEntrada(double preco, {this.desconto = 0.5}) : super(preco);

  double getPreco() {
    return super.getPreco() * desconto;
  }
}

class IngressoCortesia extends Ingresso {
  IngressoCortesia() : super(0);

  double getPreco() {
    return 0;
  }
}

void main() {
  Ingresso ingressoNormal = Ingresso(20);
  print(ingressoNormal.getPreco());  

  IngressoVip ingressoVip = IngressoVip(30, 10);
  print(ingressoVip.getPreco());  

  IngressoMeiaEntrada ingressoMeiaEntrada = IngressoMeiaEntrada(50);
  print(ingressoMeiaEntrada.getPreco());  

  IngressoCortesia ingressoCortesia = IngressoCortesia();
  print(ingressoCortesia.getPreco());  
}
