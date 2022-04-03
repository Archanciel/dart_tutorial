Stream<T> delayedFromIterable<T>(Iterable<T> iter, int sec) async* {
  for (T val in iter) {
    await Future.delayed(Duration(seconds: sec));
    yield val;
  }
}

Future<void> main() async {
  print('main fromIterable');

  List<int> intLst = [1, 2, 3, 4, 5, 6, 7];
  Stream<int> delayedIntStream = Stream<int>.fromIterable(intLst);

  Stream<int> selectionSubStream =
      delayedIntStream.map((event) => event).where((event) => event > 3);

  await selectionSubStream.forEach((element) async => print(element));

  print('main delayedFromIterable');

  delayedIntStream = delayedFromIterable(intLst, 2);

  selectionSubStream = delayedIntStream.map((event) => event).where((event) => event > 3);

  DateTime before = DateTime.now();

  await selectionSubStream.forEach((element) async {
    print(element);
  });

  int df = DateTime.now().difference(before).inSeconds;
  print('duration $df seconds');

  Stream<int> waitStr = delayedFromIterable(intLst, 2);

  before = DateTime.now();

  await waitStr.forEach(print);

  df = DateTime.now().difference(before).inSeconds;
  print('duration $df seconds');

  print('main end');
}
