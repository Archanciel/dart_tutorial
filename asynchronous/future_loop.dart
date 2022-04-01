void main() async {
  print('main start');

  int i = 0;
  Duration duration = Duration(milliseconds: 1);

  print('executing Future\'s ...');

  DateTime now = DateTime.now();

  while (i < 500) {
    await Future.delayed(duration, () => i++);
  }

  final int timeDiff = DateTime.now().difference(now).inMilliseconds;

  print(i);
  print(timeDiff);
  print('main end');
}
