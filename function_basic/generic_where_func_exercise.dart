void main() {
  const List<String> strLst = [
    'bonjour Tamara',
    'comment vas-tu ?',
    'bien',
    'et toi ?',
    'ok !'
  ];

  final Iterable<String> shortStrIter = whereFunc<String, String>(
      strLst,
      (List<String> inputLst) =>
          inputLst.where((element) => element.length < 10));

  print(shortStrIter);

  const List<double> doubleLst = [
    1.12,
    0.54,
    761787.9787876,
    43.9879,
    89.2645,
  ];

  final Iterable<int> cubedDoubleRoundedIter =
      whereFunc<double, int>(doubleLst, (List<double> inputLst) {
    List<double> whereLst = inputLst.where((element) => element > 10).toList();
    Iterable<int> cubedDoubleRoundedIter =
        whereLst.map((e) => (e * e * e).round());

    return cubedDoubleRoundedIter;
  });

  print(cubedDoubleRoundedIter);
}

Iterable<R> whereFunc<T, R>(
    List<T> inputList, Iterable<R> Function(List<T>) func) {
  return func(inputList);
}
