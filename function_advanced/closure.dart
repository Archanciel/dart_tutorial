void main() {
  const int multiplier = 10;
  const List<int> intLst = [1, 2, 3, 4];

  final intLst10_1 = intLst.map((x) => x * 10);
  final intLst10_2 = intLst.map((x) => x * multiplier);
  final intLst10_3 = intLst.map((x) {
    return x * multiplier;
  });

  print('intLst10_1: $intLst10_1');
  print('intLst10_2: $intLst10_2');
  print('intLst10_3: $intLst10_3');
}
