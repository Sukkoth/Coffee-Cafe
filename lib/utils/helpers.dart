class Helpers {
  static String capitalizeWord(String word) {
    return word.replaceFirst(word[0], word[0].toUpperCase());
  }

  static String formatCardNumber(String number) {
    List splitted = number.split("");
    String formatted = "";

    for (var i = 0; i < splitted.length; i++) {
      if (i == splitted.length - 1 || (i + 1) % 4 != 0) {
        formatted += splitted[i];
      } else {
        formatted += splitted[i] + " ";
      }
    }
    print(formatted);
    return formatted;
  }
}
