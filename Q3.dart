abstract class Funcionario {
  String cpf;
  String nome;

  Funcionario(this.cpf, this.nome);

  double getSalario();
}

class Entregador extends Funcionario {
  double valorPorEntrega;
  int totalEntregas;

  Entregador(String cpf, String nome, this.valorPorEntrega)
      : totalEntregas = 0,
        super(cpf, nome);

  void adicionarEntrega() {
    totalEntregas++;
  }

  @override
  double getSalario() {
    return valorPorEntrega * totalEntregas;
  }
}

class Montador extends Funcionario {
  double valorDiaria;
  int totalDiarias;

  Montador(String cpf, String nome, this.valorDiaria)
      : totalDiarias = 0,
        super(cpf, nome);

  void adicionarDiaria() {
    totalDiarias++;
  }

  @override
  double getSalario() {
    return valorDiaria * totalDiarias;
  }
}

class Vendedor extends Funcionario {
  double comissao;
  double totalVendas;

  Vendedor(String cpf, String nome, this.comissao)
      : totalVendas = 0,
        super(cpf, nome);

  void adicionarVenda(double valor) {
    totalVendas += valor;
  }

  @override
  double getSalario() {
    return comissao * totalVendas;
  }
}

void main() {
  Entregador entregador = Entregador("123456789", "João Paulo", 7.0);
  entregador.adicionarEntrega();
  entregador.adicionarEntrega();
  print("Salário do Entregador: ${entregador.getSalario()}");

  Montador montador = Montador("987654321", "Maria Clara", 40.0);
  montador.adicionarDiaria();
  montador.adicionarDiaria();
  montador.adicionarDiaria();
  print("Salário do Montador: ${montador.getSalario()}");

  Vendedor vendedor = Vendedor("543216789", "Miguel Elias", 0.1);
  vendedor.adicionarVenda(1000.0);
  vendedor.adicionarVenda(2000.0);
  print("Salário do Vendedor: ${vendedor.getSalario()}");
}
