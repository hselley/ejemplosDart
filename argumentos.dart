void main(List<String> arguments) {
  print(arguments);

  for(int i=0; i<arguments.length; i++) {
    print(arguments[i]);
  }

  for(var a in arguments) {
    print(a);
  }
}

