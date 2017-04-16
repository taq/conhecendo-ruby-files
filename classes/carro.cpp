#include <iostream>

using namespace std;

class Automovel {
  public:
    void ligar() {
      cout << "ligando o automóvel\n";
    }
};

class Radio {
  public:
    void ligar() {
      cout << "ligando o rádio\n";
    }
};

class Carro: public Automovel, public Radio {
  public:
    Carro() {}
};

int main() {
  Carro carro;
  carro.ligar(); // só compila com Automovel::ligar();
  return 0;
}
