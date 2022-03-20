Future delayedPrint(int seconds, String msg) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => msg);
}

void main() async {
  print('I am');
  await delayedPrint(2, "no longer").then((status) {
    print(status);
  });
  await delayedPrint(2, "in hell !").then((status) {
    print(status);
  });
}
