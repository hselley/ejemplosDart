import 'dart:math';

void main() {
  print("Hola mundo");
  print(sin(3.141597));
  print(sqrt(2));

  int numero = 10;
  print(numero.round());
  numero = pi.toInt();
  print(numero);
  print('$numero es par?:');
  print(numero.isEven);
  print('$numero es impar?');
  print(numero.isOdd);

  print(DateTime.now().hour);

  const double c = 21.2;
  print(c);
  print(c is int);
  print(c is double);
  print(c.runtimeType);

  final double d = 3;
  print(d);

  // int y double son clases y además subclases de num
  num n = 50;
  print("Mi numero es $n");
  print(n is int);
  print(n is double);
  print(n is num);

  n = 50.5;
  print("Mi numero es $n");
  print(n is int);
  print(n is double);
  print(n is num);

  print(max(n, 4));

  // # Strings

  var saludation = "Hello!";
  print(saludation.codeUnits);
  // Códigos de los caracteres en UTF-16
  // UTF-16 códifica hasta 65536 combinaciones

  // Dart soporta emojis: emojipedia.org
  const fire = "🔥";
  print(fire);

  final corazon = "❤️";
  print(corazon);

  const dart = "🎯";
  print(dart);

  const mexico = "🇲🇽";
  print(mexico);
  print(mexico.runes); // runes:
  // Lista de puntos de código Unicode
  // 127474 = M
  // 127485 = X

  const family = "👨‍👩‍👧‍👦";
  print(family);
  print(family.runes);
  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);
  // Lista de puntos de código Unicode

  int? x;
  print(x);

  const bigString = '''
  You can have a string
  that contains multiple
  lines
  by
  doing this.''';
  print(bigString);

  const rawString = r'My name \n is $name.';
  print(rawString);
  print(r'My name \n is $name.');

  print('I \u2764 Dart\u0021');

  print('I love \u{1F3AF}');

  var myPreciousData = 5782;
  String anInnocentLookingFunction(String name) {
    myPreciousData = -1;
    return 'Hello, $name. Heh, heh, heh.';
  }

  anInnocentLookingFunction("name");
  print(myPreciousData);
}
