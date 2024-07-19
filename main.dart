void main() {
  // Variáveis inteiras
  int number;
  number = 10;

  // Variáveis double
  double number2;
  number2 = 20.30;

  // Variáveis de String
  String nome;
  nome = "Patrick";

  // Variáveis com valores setados após usados
  var variavel;
  variavel = 1;

  // Variável dinâmica, podendo mudar o seu valor
  dynamic variavel2 = 1;
  variavel2 = 2;

  // Resultados em print
  print(number);
  print(number2);
  print(nome);
  print(variavel);
  print(variavel2);

  // Usando prints diferentes
  print("Número: $number");
  print("Número: ${number * 2}");
  print("O " +
      nome +
      " tem " +
      number.toString() +
      " estatuetas e " +
      (variavel2 * 0).toString() +
      " punições.");

  print("");
  print("");

  // Testes de cálculos com variáveis
  int numer1 = 1;
  int numer2 = 2;

  print("Número 1: $numer1");
  print("Número 2: $numer2");

  int soma = numer1 + numer2;

  print("O valor de soma entre os dois números é: $soma");

  int subtracao = numer1 - numer2;

  print("O valor de subtração entre os dois números é: $subtracao");

  int multiplicacao = numer1 * numer2;

  print("A multiplicação dos dois números é: $multiplicacao");

  double divisao = numer1 / numer2;

  print("A divisão entre os dois números é: $divisao");

  int divisaoParteInteira = numer1 ~/ numer2;

  print("A parte inteira da divisão é: $divisaoParteInteira");

  int divisaoResto = numer1 % numer2;

  print("O resto da divisão é: $divisaoResto");

  // Condições no dart
  if (nome == "Patrick" && number == 10) {
    print("PASSOU");
  }

  // Condições ternários no Dart
  bool condicion = true;

  // ignore: dead_code
  print(condicion ? 'Condição verdadeira' : 'Condição falsa');

  print(somaVAR(30, 40));

  // Uso de classes no Dart, instanciando a classe carro
  Carro car = new Carro();

  car.setCor("Rosa");
  car.setMarca("Civic");
  car.setNumeracao(2019);
  car.setModelo("Modelo Default");

  print(car.getCor());
  print(car.getMarca());
  print(car.getModelo());
  print(car.getNumeracao());

  // Classes com construtores
  Pessoa pessoa1 =
      new Pessoa("Patrick", "70375697126", "Rua 2", "(62) 98256-3379");
  pessoa1.getPessoa();

  // Heranças de classes
  Pai pai1 = new Pai("Rogério", "70375699976", "Rua 30", "(62) 98256-3377");
  pai1.getPessoa();

  // Coisas novas
  print(new DateTime.now());

  // Usando abstract em classes no Dart
  Heroi heroi1 = new Heroi(10, 10, "Patrick");
  Inimigo inimigo1 = new Inimigo(20, 20, "Orc");

  heroi1.getInformations();
  inimigo1.getInformations();

  // Listas em Dart
  List<String> pessoas = ["João", "José", "Pedro", "Maria"];

  print(pessoas);

  pessoas.add("Patrick");
  pessoas.remove("João");
  pessoas.insert(2, "João");
  print(pessoas.contains("Patrick"));
  pessoas.forEach((String pessoas) => print(pessoas));

  for (int i = 0; i < pessoas.length; i++) {
    print(pessoas[i]);
  }

  // Map no Dart
  Map<int, String> numeros = Map();

  numeros[1] = "Um";
  numeros[2] = "Dois";
  numeros[3] = "Três";
  numeros[100] = "Cem";

  Map<String, String> estados = Map();

  estados["GO"] = "Goiás";
  estados["TO"] = "Tocantins";
  estados["SP"] = "São Paulo";

  print(estados["SP"]);
  print(estados.keys);
  print(estados.values);

  // Transformação de variáveis
  // Números
  double PI = 3.141516;

  print(PI);
  print(PI.abs());
  print(PI.toInt());
  print(PI.toDouble());
  print(PI.floor());
  print(PI.ceil());
  print(PI.toString());
  print(PI.clamp(2, 3));
  print(PI.round());
  print(PI.toStringAsFixed(2));
  print(PI.truncate());

  // Strings
  String string = "João      ";

  print(string.toLowerCase());
  print(string.toUpperCase());
  print('[$string]');
  print(string.trim());
  //string = string.padLeft(10, '1° - ');
  //print(string);

  for (int i = 1; i < 6; i++) {
    print(string.padLeft(10, '$i° - '));
  }

  string = "João da Silva Júnior colocando nomes";

  print(string.substring(1, 10));
  print(string.indexOf(' '));
  print(string.substring(0, string.indexOf(' ')));
  print(string.split(' ')[0]);
  print(string.split(' '));
}

int somaVAR(int num1, int num2) {
  return num1 + num2;
}

class Carro {
  late int _numeracao;
  late String _marca;
  late String _modelo;
  late String _cor;

  void setNumeracao(int num) {
    this._numeracao = num;
  }

  void setMarca(String marc) {
    this._marca = marc;
  }

  void setModelo(String mode) {
    this._modelo = mode;
  }

  void setCor(String cor) {
    this._cor = cor;
  }

  int getNumeracao() {
    return this._numeracao;
  }

  String getMarca() {
    return this._marca;
  }

  String getModelo() {
    return this._modelo;
  }

  String getCor() {
    return this._cor;
  }
}

class Pessoa {
  late String nome;
  late String cpf;
  late String endereco;
  late String telefone;

  /*
  Pessoa(String nomeTEMP, String cpfTEMP, String enderecoTEMP,
      String telefoneTEMP) {
    this.nome = nomeTEMP;
    this.cpf = cpfTEMP;
    this.endereco = enderecoTEMP;
    this.telefone = telefoneTEMP;
  }
  */

  Pessoa(this.nome, this.cpf, this.endereco, this.telefone);

  void getPessoa() {
    print(
        "Nome: ${this.nome} \nCPF: ${this.cpf} \nEndereço: ${this.endereco} \nTelefone: ${this.telefone}");
  }
}

class Pai extends Pessoa {
  Pai(nome, cpf, endereco, telefone) : super(nome, cpf, endereco, telefone);

  @override
  void getPessoa() {
    print(
        "Nome: ${this.nome} \nCPF: ${this.cpf} \nEndereço: ${this.endereco} \nTelefone: ${this.telefone} \nOverrider");
  }
}

abstract class Personagem {
  late double posicaoX;
  late double posicaoY;
  late String nome;

  Personagem(this.posicaoX, this.posicaoY, this.nome);

  void getInformations() {
    print(
        "Nome: ${this.nome} \nPosição X: ${this.posicaoX} \nPosiçao Y: ${this.posicaoY}");
  }
}

class Heroi extends Personagem {
  Heroi(double posicaoX, double posicaoY, String nome)
      : super(posicaoX, posicaoY, nome);
}

class Inimigo extends Personagem {
  Inimigo(double posicaoX, double posicaoY, String nome)
      : super(posicaoX, posicaoY, nome);
}
