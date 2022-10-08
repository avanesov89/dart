// MAP - это неупорядочный набор пары ключ-значение. Каждый ключ должен быть уникальным. Значения могут повторяться.

var map = {
  'key': 'value1',
  'key2': 'value2',
};

Map<int, String> map1 = {
  1: 'value1',
  2: 'value2'
}; // в данной строке в качестве ключа используется INT - цифра, в качестве значения - String , строка

// Размер map не фиксирован, может увеличиваться и уменьшаться.

Map<String, String> listColor = Map(); // Создание объекта с последующем объявлением данных ключ-пара
listColor['red'] = 'stop';
listColor['yellow'] = 'warning';
listColor['green'] = 'start';

// изменение значение у элементов
listColor['yellow'] = 'wait';

// Каждый элемент в Map фактически представляет объект MapEntry<K, V> , где K - это тип ключа, V - тип объекта.
// У этого типа есть 2 свойства: key, value. Используя эти свойства, мы можем получить содержимое этих элементов. 

// Мы можем у MAP перебрать все ключи, используя (т.е., взяли key и указали у какого объекта из забирать)
for (var key in listColor.keys) {

}

// Мы можем у MAP перебрать все значения, используя (т.е., взяли value и указали у какого объекта из забирать)
for (var value in listColor.values) {
  
}

// мы можем получить ВСЕ элементы, используя метод forEach, берем переменную и вызываем метод
listColor.forEach((key, value) => print('key: $key, value: $value'));


// Основные методы и свойства MAP

listColor.containsKey('red') // метод возвращает true, если метод Map() содержит ключ с значением red

listColor.update('green', (value) => 'green1') // с помощью нотации меняем значение value у ключа green на green1

listColor.remove('red') // удаление значение с ключом red, удаляет и ключ и значение, вся строка

listColor.lenght; // выводит кол-во элементов в методе Map
listColor.isEmpty; // узнать, пустой ли список (вернет true, если пустой, или false, если не пустой)
listColor.clear(); // очищает все содержимое метода Map



