// Напишите программу, которая выводит на экран числа от 1 до 100.
// При этом вместо чисел, кратных трем, программа должна выводить слово «Super», а вместо чисел, кратных пяти — слово «Quiz».
// Если число кратно и 3, и 5, то программа должна выводить слово «Super Quiz»

// & - символ остатка от деления

void main() {
  var number = 0; // объявляем переменную

  do {
    number++; // увеличиваем значение переменной на 1

    if (!(number % 3 == 0) && !(number % 5 == 0)) print(number);
    // мы начинаем проверку внутри скобок, равен ли остаток от деления нулю (0), (как с цифрой 3, так и с цифрой 5). Если не равно, в IF у нас ложь, и мы просто выводим число number

    if (number % 3 == 0 && !(number % 5 == 0)) print("Super");
    // в данном случае мы проверяем, если остаток от деления на 3 равно 0 (т.е. кратно 3), и остаток от деления на 5 НЕ РАВНО остатку 0, то выводим Super.

    if (number % 5 == 0 && !(number % 3 == 0)) print("Quiz");
    // в данном случае мы проверяем, если остаток от деления на 5 равно 0 (т.е. кратно 5), и остаток от деления на 3 НЕ РАВНО остатку 0, то выводим Quiz.

    if (number % 3 == 0 && number % 5 == 0) print("Super Quiz");
    // А тут проверяем, если остаток от деления на 3 и на 5 равно 0 (т.е. кратно 3 и 5), то выводим Super Quiz
  } while (number >= 1 &&
      number <= 99); // обозначаем, что нам нужно проверить значения от 1 до 100
}
