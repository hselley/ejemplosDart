void main() {
  var b = true;
  print(b ? "Pasó" : "No pasó");

  int? firstNum = 101;
  int? secondNum;
  var first = firstNum != 10 ? 'Not $firstNum' : '$firstNum';
  print(first); // 10
  /// the long version with if-else
  if (firstNum != 10) {
    print('Not $firstNum');
  } else {
    print('$firstNum'); // 10
  }
  var second = secondNum ?? 10;
  print('$second');

  var x = first == 5;
  print(x);

  int? y = null;
  print(y);

  int? age;
  double? height;
  String? message;

  print(age);
  print(height);
  print(message);
  // print(message.length);

  String? name;
  name = "Bradley";
  print(name);

  /// Función que determina si un entero es positivo, tolerante a nulos
  bool isPositive(int? anInteger) {
    if (anInteger == null) {
      return false;
    }
    return !anInteger.isNegative;
  }

  int v = 1;
  print(isPositive(v));
}
