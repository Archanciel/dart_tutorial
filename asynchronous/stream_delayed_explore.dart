Stream<T> delayedFromIterable<T>(Iterable<T> iter, int sec) async* {
  // Returns a Stream in which element in the passed Iterable
  // is delayed of sec seconds.
  for (T val in iter) {
    await Future.delayed(Duration(seconds: sec));
    yield val;
  }
}

Future<void> main() async {
  print('main fromIterable');

  List<int> intLst = [1, 2, 3, 4, 5, 6, 7];

  // using the Stream fromIterable() named constructor does not enable
  // to add delays on the stream elements
  Stream<int> intStream = Stream<int>.fromIterable(intLst);

  // expression below extract a sub stream from the intStream
  Stream<int> selectionSubStream =
      intStream.map((event) => event).where((event) => event > 3);

  await selectionSubStream.forEach((element) async => print(element));

  print('main delayedFromIterable');

  Stream<int> delayedIntStream = delayedFromIterable(intLst, 2);

  // expression below extract a sub stream from the delayedIntStream
  selectionSubStream =
      delayedIntStream.map((event) => event).where((event) => event > 3);

  DateTime before = DateTime.now();

  // although we are getting less elements than the initial delayedIntStream,
  // walking through the selectionSubStream takes the same time than walking
  // through the initial delayedIntStream !
  await selectionSubStream.forEach(print);

  int df = DateTime.now().difference(before).inSeconds;
  print('duration $df seconds');

  delayedIntStream = delayedFromIterable(intLst, 2);

  before = DateTime.now();

  await delayedIntStream.forEach(print);

  df = DateTime.now().difference(before).inSeconds;
  print('duration $df seconds');

  print('main end');
}
