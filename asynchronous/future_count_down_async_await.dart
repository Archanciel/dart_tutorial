Future<void> main() async {
  for (int i = 5; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }

  print('done');
}
