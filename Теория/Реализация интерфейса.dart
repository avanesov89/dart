// Реализация интерфейсов в dart

// наследование в dart нельзя применить из двух классов (родительских), только из одного! Множественное наследование не допускается!
// Чтобы исправить это, в дарте применяется реализация интерфейсов. Это не отдельная сущность, а тот же класс.

void main() {
  var vehicle = Vehicle('Ford', 100);
  vehicle.move();
  vehicle.speedMove();
}

class Car {
  String name;
  Car(this.name);

  void move() {
    print('The $name has started');
  }
}

class Train {
  int speed;
  Train(this.speed);

  void speedMove() {
    print('The train has started with $speed');
  }
}

// class Vehicle extends Car, Train {}; - это ошибка!

// Чтобы это исправить, в дарте для реализации интерфейса применяется оператор implements . Применение интерфейса класса Car, Train означает, что класс Vehicle должен реализовать все поля и методы, которые определены в классах Car и Train, т.е. поля name/speed, а также методы move/speedMove. Пример:

class Vehicle implements Car, Train {
  String name; // реализация поля name из класса Car
  int speed; // реализация целочисленного значения из класса Train;

  Vehicle(this.name, this.speed);

  void move() {
    print('The $name has started');
  }

  void speedMove() {
    print('with $speed');
  }
}
