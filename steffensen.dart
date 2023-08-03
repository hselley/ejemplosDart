import 'dart:math';

void main(List<String> args) {
  // Rutina princial: Llamada al método

  final raiz = steffensen(pi / 4, TOL: 0.0000001);
  print("La raíz es $raiz");
}

double steffensen(double p0, {double TOL = 0.01, double n0 = 50}) {
  int i = 1;
  double p, p1, p2;

  while (i <= n0) {
    p1 = g(p0);
    p2 = g(p1);
    p = p0 - pow((p1 - p0), 2) / (p2 - 2 * p1 + p0);
    print("p$i = $p");
    if ((p - p0).abs() < TOL) {
      return p;
    }
    i++;
    p0 = p;
  }
  print("El método fracasó luego de $n0 itreraciones.");
  return (0);
}

double g(double x) {
  return cos(x);
}
