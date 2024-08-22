import 'dart:math';

void main() {
  print("Secante");
  secante(1.0, 2.0, 0.01, 50);

  print("Bisección");
  biseccion(1.0, 2.0, 0.01, 50);

  print("Newton-Raphson");
  newtonRaphson(1.0, 0.01, 50);
}

double f(double x) {
  return pow(x, 3) + 4 * pow(x, 2) - 10;
}

double fp(double x) {
  return 3 * pow(x, 2) + 8 * x;
}

bool secante(p0, p1, TOL, n0) {
  int i = 2;
  double p;
  double q0 = f(p0);
  double q1 = f(p1);

  while (i <= n0) {
    p = p1 - q1 * (p1 - p0) / (q1 - q0);
    print("p_$i = $p");
    if ((p - p1).abs() < TOL) {
      final er = (p - p1).abs() / p.abs() * 100;
      print("ER = $er %");
      return (true);
    }
    i++;
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
  }
  print("El método fracasó luego de $n0 iteraciones");
  return (false);
}

bool biseccion(a, b, TOL, n0) {
  int i = 1;
  double p;
  double fa = f(a);
  while (i <= n0) {
    p = a + (b - a) / 2;
    print("p_$i = $p");
    double fp = f(p);
    if (fp == 0 || (b - a) / 2 < TOL) {
      final er = ((b - a) / 2 / p).abs() * 100;
      print("ER = $er %");
      return (true);
    }
    i++;
    if (fa * fp > 0) {
      a = p;
      fa = fp;
    } else {
      b = p;
    }
  }
  print("El método fracasó luego de $n0 iteraciones");
  return (false);
}

bool newtonRaphson(p0, TOL, n0) {
  int i = 1;
  while (i <= n0) {
    double p = p0 - f(p0) / fp(p0);
    print("p_$i = $p");
    if ((p - p0).abs() < TOL) {
      final er = (p - p0).abs() / p.abs() * 100;
      print("ER = $er %");
      return (true);
    }
    i++;
    p0 = p;
  }
  print("El método fracasó luego de $n0 iteraciones");
  return (false);
}
