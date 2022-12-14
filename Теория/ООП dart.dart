// ООП в dart

// Dart является объектно ориентированным языком, где каждый тип и каждое значение, коиторое мы используем, является объектом. 
// по примеру автомобиля: при создании автомобиля мы знаем, что у него должен быть кузов, колеса, подвестка, зеркала, внутренняя отделка. А еще мы знаем, что наш автомобиль должен набирать скорость, сбавлять скорость, тормозить и стартовать с места, совершать поворот. 

// Т.е. мы описываем все запчасти, из которых состоит автомобиль, и то, как этот автомобиль будет взаимодействовать с этими запчастями. Мы описываем то, что должен сделать пользователь, чтобы автомобиль затормозил, включил фары и тд. результатом нашей работы будет некий эскиз, т.е. мы разработали то, что в ООП называется классом.

// машина по нашим чертежам выходит с конвеера. каждая из них точь в точь повторяет чертежи, НО каждая машина уникальна. Каждый автомобиль имеет свой серийный номер, автомобили различаются цветом, или типом шин. По факту, эти автомобили являются ОБЪЕКТАМИ моего класса. 

// Объект или экземпляр - это отдельный представитель класса, имеющий конкретное состояние и поведение, полностью определяющее классом. 

// Иначе: объект представляет экземпляр некоторого класса, а класс является шаблоном или описанием объекта. 

Для определения класса служит ключевое слово class , после названия класса идут фигурные скобки {}, внутри которого находится тело класса. Классы нельзя определить внутри функции или другого класса.

Любой объект может обладать двумя характеристиками: 
  * состояние - некоторое данные, которые хранит объект. Для хранения состояния объекта в классе используются переменные или, в контексте класса, они называются свойствами. 
  * поведение - действия, которые может совершать объект. Для определения поведения в классе используются функции или, в контексте класса, они называются методами. 



void main() {
  var myCar = Car(); // можно определить сам тип переменной, в данном случае это будет Car, т.е. запись может быть записана как var myCar, так и Car mycar.
  myCar.carName = 'Mersedes'; // обращаемся к свойствам и методам через переменную, используем точечную нотацию. Название марки - свойство.
  myCar.color = 'black'; // цвет марки - свойство
  myCar.start();

  // по существующему классу мы можем создать еще один объект или, как его еще называют, экземпляр класса. 

  Car myCar2 = Car();
  myCar2.carName = 'Ford';
  myCar2.color = 'red';
  myCar2.start();
  myCar2.stop();

  т.е. мы просто создали отдельную переменную на основе нашего класса и использовали состояние, которые хранит этот класс (объект)
}

class Car { // определяем класс
  String? carName; // строго типизировано, является строкой
  var color; // динамически типизированно, и может содержать значение любого типа. Удобно использовать, если еще не решили, какой тип свойств будем использовать в конечном итоге. Но лучше заменять строгими в последующем. 

  void start() {
    print('The $color $carName has started');
  }

  void stop() {
    print('The $carName $color has stopped now.');
  }
}

// Конструкторы класса

Когда мы создаем новый объект или экземпляр класса, то вызывается специальный метод, называемый конструктором класса. Имя конструктора совпадает с именем класса. Конструкторы выполняются инициализацию объекта. В примере выше конструктор не определен. поэтому для этого класса автоматически создается пустой конструктор. Эквивалентен такому конструктору: 
Car() {} 

Конструктор по умолчанию не принимает никаких параметров. В итоге после выполнения данного выражения Car() в памяти будет выделен участок. где будут хранится все данные объекта Car(), а переменная myCar получит ссылку на созданный объект.

Если необходимо, чтобы при создании объекта производилась какая-то логика, например, чтобы свойства класса получали какие-то определененные значения, то можно определить в классе свои конструкторы. Как это можно сделать: конструктор может также принимать параметры. 

Car(String carName, var color) {

}

как правило, в конструкторе параметры называются также, как и свойства класса. Теперь нужно свойству класса carName присвоить значение параметра carName, и чтобы разграничить свойства и параметры, применяется ключевое свойство this. 

Car(String carName, var color) {
  this.carName = carName;
  this.color = color;
}

ключевое слово this представляет ссылку на текущий экземпляр класса, через это ключевое слово мы можем обращаться к свойствам метода объекта Car, а также вызывать его конструктор. Теперь можем воспользоваться этим: 

void main() {
  var myCar = Car("Audi", "red");
  myCar.start();
}

итоговый код: 

void main() {
  var myCar = Car("Audi", "white");
  myCar.start();
}

class Car {
  String? carName;
  var color;

  Car(String carName, var color) {
    this.carName = carName;
    this.color = color;
  }
  
  void start() {
    print('The $color $carName has started');
  }

  void stop() {
    print('The $carName has stopped now.');
  }
}


сокращение данной записи: 

Car(this.carName, this.color);

конструктор может принимать параметры, в том числе не обязательные. 

Car(this.carName, [this.color]); // для этого указываем параметр color в квадратных скобках. Но при распечатывании получим null. 

Также можем сделать значение по умолчанию. 
Car(this.carName, [this.color = 'Red']);

Также можем параметр конструктора сделать именованным. К примеру: 

Car(this.carName, {this.color = 'Red'});
и теперь при создании объекта необходимо указать сначала именнованный параметр color, и потом значение: 
var myCar = Car("Audi", color: "red");






Именованные конструкторы.
по умолчанию мы можем определить только один общий конструктор. Если нам необходимо использовать в классе сразу несколько конструкторов, то в этом случае нужно применять так называемые именованные конструкторы. 

создается через точечную нотацию. 

Car.named() {
  carName = 'Ford';
  color = 'green';
}

void main() {
  Car myCar = Car.named(); // вызвали конструктор без параметров
  myCar.start();
}

Создадим еще один конструктор: 

Car.fromColor(var Color) {
  carName = 'Porshe';
  color = color;
}

вызов такого конструктора будет следующим: 

void main() {
  Car myCar = Car.fromColor(
    "Orange"
  ); // вызвали конструктор с параметром
    myCar.start();
}

в данном случае в print выведется null , вместо цвета. Потому что мы указали color = color, т.е. параметр-параметр. Поэтому нужно использовать ключевое слово this.

Car.fromColor(var color) {
  carName = 'Porshe';
  this.color = color;
}

Итого:

Car.named() {
  carName = 'Ford'; // задаем свойство здесь
  color = 'green'; // задаем свойство и здесь
}

Car.fromColor(var color) {
  carName = 'Porshe'; // задаем свойство здесь
  this.color = color; // задаем свойство и здесь
}

Car(String carName, var color) {
  this.carName = carName; // Задаем свойство здесь
  this.color = color; // Задаем свойство и здесь
}

