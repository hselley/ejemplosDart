import 'dart:math';

void main(List<String> args) {
  final A = <List<double>>[
    [10, -1, 2, 0],
    [-1, 11, -1, 3],
    [2, -1, 10, -1],
    [0, 3, -1, 8]
  ];
  final b = <double>[6, 25, -11, 15];

  List<double> x = jacobi(A, b, 0.01, 50);
  print(x);
}

List<double> jacobi(List<List<double>> A, List<double> b, double TOL, int n0) {
  int n = A.length;
  int k = 1;
  double suma = 0.0;
  var x = List.filled(n, 0.0);
  var x0 = List.filled(n, 0.0);

  while (k <= n0) {
    for (var i = 0; i < n; i++) {
      suma = 0.0;
      for (var j = 0; j < n; j++) {
        if (j != i) {
          suma += A[i][j] * x0[j];
        }
      }
      x[i] = 1 / A[i][i] * (-suma + b[i]);
    }
    print("x$k = $x");
    print(norma(restaV(x, x0)));
    if (norma(restaV(x, x0)) < TOL) {
      return x;
    }
    k++;
    x0 = [...x];

    /// Esto crea un clon de la lista, de no ser así se hace una copia por referencia
    print(x0);
  }
  print("Número máximo de iteraciones excedido");
  return x;
}

double norma(List<double> x) {
  double n = 0.0;

  for (var i in x) {
    n += pow(i, 2);
  }
  return sqrt(n);
}

List<double> restaV(List<double> x, List<double> y) {
  var r = List.filled(x.length, 0.0);

  for (var i = 0; i < x.length; i++) {
    r[i] = x[i] - y[i];
  }
  //print(r);

  return r;
}
