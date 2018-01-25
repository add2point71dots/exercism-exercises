class ReverseString {
  String reverse(String inputString) {
    String reversedInput = "";
    if (inputString.length() > 0) {
      for (int i = inputString.length() - 1; i >= 0; i--) {
        reversedInput += inputString.charAt(i);
      }
    }
    return reversedInput;
  }
}
