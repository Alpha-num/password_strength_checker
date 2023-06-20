import 'dart:io';

//This program checks the strength of a user's password based on certain criterias
void main() {
  String characters = '@&\$#';
  String capitalLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  print("Enter Your Password");
  String userPassword = stdin.readLineSync().toString();
  int passwordStrength = 0;
  if (userPassword.length > 6) {
    passwordStrength += 1;
  }
  for (var i = 0; i < characters.length; i++) {
    if (userPassword.contains(characters[i])) {
      passwordStrength += 1;
      break;
    }
  }
  for (var i = 0; i < capitalLetters.length; i++) {
    if (userPassword.contains(capitalLetters[i])) {
      passwordStrength += 1;
    }
  }
  for (var i = 0; i < numbers.length; i++) {
    if (userPassword.contains(numbers[i].toString())) {
      passwordStrength += 1;
    }
  }
  if (passwordStrength >= 5) {
    print('Strong Password');
  } else {
    print("Your password is weak");
  }
}
