void main() {
  const List<int> intLst = const [1, 2, 3, 4];

  final int val = intLst.reduce((value, element) => value * element);
  print(val);
}
