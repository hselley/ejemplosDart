void main() {
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

  var lista = [14, 0, -21, null];
  lista.forEach((element) {
    print(element);
    print(isPositive(element));
  });

  /* Operador if-null */
  // Ejemplo 1:
  String? message2;
  final text = message2 ?? 'Error';
  print(text);

  // El código del ejemplo 1 es equivalente a:
  double? fontSize;
  // Se puede escribir así:
  fontSize = fontSize ?? 20.0;
  // O su contracción:
  fontSize ??= 20.0;
  print(fontSize);

  /* Operador de acceeso */
  int? age2;
  print(age2?.isNegative);
  print(age2?.toDouble());

  /* Operador afirmación ! */
  String? myNullableString = 'b';
  String nonNullableString = myNullableString!;
  // Esta advertencia ocurre porque la variable no es nula
  print(nonNullableString);

  // Ejemplo:
  bool? isBeautiful(String? item) {
    if (item == 'flower') {
      return true;
    } else if (item == 'garbage') {
      return false;
    }
    return null;
  }

  // El operador afirmación indica que la variable no es nula, por lo que
  // la asignación es válida.
  bool flowerIsBeautiful = isBeautiful('flower')!;

  /// Esta alternativa lleva a cabo un _cast-down_ al tipo de dato:
  /// bool? -> bool
  bool flowerIsBeautiful2 = isBeautiful('flower') as bool;
  print(flowerIsBeautiful2);

  // Una opción más segura es la siguiente:
  bool flowerIsBeautiful3 = isBeautiful('flower') ?? true;
  print(flowerIsBeautiful3);

  /** Operador índice ?[] */
  List<int>? myList1 = [1, 2, 3]; // Lista que puede ser nula
  print(myList1);

  myList1 = null;
  print(myList1);

  int? myItem =
      myList1?[2]; // Valor posible nulo obtenido de una lista posible nula
  print(myItem);

  List<int?> myList2 = [1, 2, 3, null]; // Lista que puede contener nulos
  print(myList2);

  // myList2 = null; // Pero no puede ser nula

  List<int?>? myList3 = [1, 2, 3, null];
  // Lista que puede ser nula y que puede contener nulos
  print(myList3);
  myList3 = null;
  print(myList3);

  /* Expresiones Condicionales  */
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
}
