import 'dart:math';

void main(List<String> args) {
  final raiz = biseccion(a:1, b:2);
  print("La raíz es $raiz");
}

double biseccion({required double a, required double b, double TOL=0.01, int n0=50}) {
  double p=0;
  double er;
  double fp;
  double fa = f(a);
  double fb;
  int i=1;

  while(i<=n0) {
    p = a + (b-a)/2;
    fp = f(p);
    fa=f(a);
    fb=f(b);
    print("$a\t $b\t $p\t $fa\t $fb\t $fp");
    if(fp==0 || (b-a)/2<TOL) {
      er = ((b-a)/2).abs() / p.abs() *100;
      print("ER = $er %");
      return p;
    }
    i++;
    if(fa*fp>0) {
      a=p;
      fa=fp;
    } else {
      b=p;
    }
  }
  print("El método fracasó luego de $n0 iteraciones.");
  return p;
}

double f(double x) {
  return pow(x, 3) + 4*pow(x, 2) - 10;
}