void main(List<String> args) {
  print("Eliminación Gaussiana");
  List<List<double>> Ab = [
    [4, -1, 1, 8],
    [2, 5, 2, 3],
    [1, 2, 4, 11],
  ];
  print(Ab);
  List<double> x = gaussiana(Ab);
  print("La solución: $x");
}

List<double> gaussiana(List<List<double>> Ab) {
  int n = Ab.length;
  var x = List.filled(n, 0.0);
  var mij;

  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      mij = Ab[j][i] / Ab[i][i];
      print(mij);
      for (int k = i; k <= n; k++) {
        Ab[j][k] -= mij * Ab[i][k];
      }
    }
    print(Ab);
  }

  // Sustitución hacia atrás
  for (int i = n - 1; i >= 0; i--) {
    x[i] = Ab[i][n] / Ab[i][i];
    for (int j = i - 1; j >= 0; j--) {
      Ab[j][n] -= Ab[j][i] * x[i];
    }
  }

  return x;
}
