void main() {
  const doesOneEqualTwo = 1 == 2;
  print(doesOneEqualTwo);

  for (var i = 0; i < 5; i++) {
    print(i);
  }
  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  const myNumbers = [1, 2, 3];
  myNumbers.forEach((number) => print(number));

  myNumbers.forEach((number) {
    print(number);
  });

  const firstName = 'Bob';
  var lastName = '';
  if (firstName == 'Bob') {
    lastName = 'Smith';
  } else if (firstName == 'Ray') {
    lastName = 'Wenderlich';
  }
  final fullName = firstName + ' ' + lastName;
  print(fullName);
}
