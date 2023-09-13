void main(List<String> args) {
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };

  print(inventory);
  print(digitToWord);

  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  inventory.forEach((key, value) => print('$key -> $value'));

  for (final entry in inventory.entries) {
    print('${entry.key} -> ${entry.value}');
  }

  final treasureMap = {
    'garbage': 'in the dumpster',
    'glasses': 'on your head',
    'gold': 'in the cave',
    'gold': 'under your mattress',
  };
  print(treasureMap);

  final newTreasureMap = {
    'garbage': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };
  print(newTreasureMap);
} 