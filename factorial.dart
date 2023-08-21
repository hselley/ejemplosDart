main() {
  const n = 50;
  final f = factorial(n);

  print('$n! = $f');
}

double factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
