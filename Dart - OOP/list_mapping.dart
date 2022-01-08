void main(List<String> args) {
  List<int> number = [];
  List<int> numb = [1, 2, 3, 4, 5];

  for (var item in numb) {
    print(item);
  }
  numb.forEach((element) {
    print(element);
  });

  number.add(9);
  number.addAll([3, 8, 6, 1]);
  number.insert(0, 2);
  number.insertAll(6, [4, 5, 7, 98, 32, 42, 22, 73, 65, 87]);
  number.remove(98);
  number.removeAt(9);
  number.removeLast();
  number.removeRange(9, 13);
  number.removeWhere((element) => element % 2 != 1);
  print(number);
  print(number.contains(4));
  print(number.sublist(1));

  number.sort((b, a) => b - a);
  number.forEach((element) {
    print(element);
  });

  print(number.every((element) => element % 2 == 1));
  print(number.isEmpty);

  Set<int> neww;
  neww = number.toSet();
  neww.forEach((element) {
    print(element);
  });

  List<String> word = [];
  // number.map((element) => "num - " + element.toString());
  word = number.map((element) => "num - " + element.toString()).toList();
  word.forEach((element) {
    print(element);
  });
}
