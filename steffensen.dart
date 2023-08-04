import 'dart:math';

void main(List<String> args) {
  // Rutina princial: Llamada al método

  final raiz = steffensen(pi / 4);
  print("La raíz es $raiz");
}

double steffensen(double p0, {double TOL = 0.01, double n0 = 50}) {
  int i = 1;
  double p, p1, p2;
  double er;

  while (i <= n0) {
    p1 = g(p0);
    p2 = g(p1);
    p = p0 - pow((p1 - p0), 2) / (p2 - 2 * p1 + p0);
    print("p$i = $p");
    if ((p - p0).abs() < TOL) {
      er = (p-p0).abs()/p.abs() * 100;
      print("ER = $er %");
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
