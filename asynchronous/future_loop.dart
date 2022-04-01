void main() async {
  print('main start');
  int i = 0;
  DateTime now = DateTime.now();
  var duration = Duration(milliseconds: 1);
  print('executing Future\'s ...');
  while (i < 500) {
    await Future.delayed(duration, () => i++);
  }
  print(i);
  final int timeDiff = DateTime.now().difference(now).inMilliseconds;
  print(timeDiff);
  print('main end');
}
