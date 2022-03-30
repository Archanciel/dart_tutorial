import 'dart:io';

Future<void> main() async {
  stdout.write('Enter n seconds number ');
  int nSec = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  for (int i = nSec; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }

  print('done');
}
