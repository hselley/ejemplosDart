void main(List<String> args) {
  int n = 25, a = 0, b = 1, f;

  for (var i = 1; i <= n; i++) {
    f = a + b;
    print(f);
    a = b;
    b = f;
  }
}
