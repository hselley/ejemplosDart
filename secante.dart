import 'dart:math';

void main(List<String> args) {
  // Rutina principal: Manda llamar al método
  final raiz = secante(pi / 4, pi / 2, 0.001, 25);

  print("La raíz de la función es $raiz");
}

double secante(double p0, double p1, double TOL, double n0) {
  int i = 2;
  double p = 0;
  double er;
  var q0 = f(p0);
  var q1 = f(p1);

  while (i <= n0) {
    p = p1 - q1 * (p1 - p0) / (q1 - q0);
    print("p$i = $p");
    if ((p - p1).abs() < TOL) {
      er = (p - p1).abs() / p.abs() * 100;
      print("ER = $er %");
      return p;
    }
    i++;
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
  }
  print("El método fracasó luego de $n0 iteraciones.");
  return 0;
}

double f(double x) {
  return x - cos(x);
}
