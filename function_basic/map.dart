void main() {
  const List<int> intLst = [1, 2, 3, 4];

  final intLst10Iterable = intLst.map((e) => e * 10);
  final intLst10 = intLst.map((e) => e * 10).toList();

  print(intLst10Iterable);
  print(intLst10);
}
