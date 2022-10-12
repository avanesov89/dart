// Вы получите список строк. Ваша задача вернуть сумму длинны всех строк в списке.

void main() {
  List<String> words = ['abcde', 'ab', 'abc']; // Создаем список
  int wordNumber = 0;
  
  for(String word in words) { // запускаем цикл
    word.length; // в цикле считаем длину каждого слова
   // print(word.length);
  }
  
  for(String word in words) { // запускаем цикл
    wordNumber += word.length; // к переменной wordNumber плюсуем длину строки   
  }
  print(wordNumber);
}