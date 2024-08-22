void main() {
  int n = 5;

  final fRec = factorialRec(n);
  print("Recursivo: $n! = $fRec");

  final fCic = factorialCic(n);
  print("Cíclico: $n! = $fCic");
}

double factorialRec(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorialRec(n - 1);
  }
}

double factorialCic(n) {
  double f = 1;

  if (n >= 0) {
    for (int i = 1; i <= n; i++) {
      f *= i;
    }
  } else {
    f = 0;
  }

  return f;
}
