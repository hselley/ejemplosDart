void main(List<String> args) {
  const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  
  for (var element in desserts) {
    print(element);
  }

  desserts.forEach((element) => print(element));
  desserts.forEach(print);

  var lista = <int>[];
  lista.add(4);

  var lista2 = [[3,5], [5,6], [-6,6,1], [1], [7,8,9,0]];
  for (var x in lista2) {
    for (var y in x) {
     print(y);
    }
  }

  var lista3 = [];
  lista3.add([4]);
  lista3.add([1,2,3,4]);
  print(lista3);

  var lista4 = <List <int>>[];
  lista4.add([3,2,1,3]);
  lista4.add([0,2,1]);
  lista4.add([9,8,7,6,5]);
  print(lista4);
  for (var element in lista4) {
    for (var e in element) {
      print(e);
    }
  }
}