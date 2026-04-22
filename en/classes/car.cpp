#include <iostream>

using namespace std;

class Automobile {
  public:
    void turnOn() {
      cout << "turning on the automobile\n";
    }
};

class Radio {
  public:
    void turnOn() {
      cout << "turning on radio\n";
    }
};

class Car: public Automobile, public Radio {
  public:
    Car() {}
};

int main() {
  Car car;
  car.turnOn();
  // car.Automobile::turnOn();
  return 0;
}
