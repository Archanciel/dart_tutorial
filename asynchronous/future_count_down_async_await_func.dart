Future<void> countDown(int nSec) async {
  for (int i = nSec; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
}
Future<void> main() async {
  await countDown(5);

  print('done');
}

