void main() async {
  int i = 0;
  DateTime now = DateTime.now();
  while (i < 500) {
    await Future.delayed(Duration(milliseconds: 1), () => i++);
  }
  print(i);
  final int timeDiff = DateTime.now().difference(now).inMilliseconds;
  print(timeDiff);
}
