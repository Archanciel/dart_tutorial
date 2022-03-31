import 'package:intl/intl.dart';

void main() async {
  DateTime timeNow = DateTime.now();
  int i = 0;

  while (DateTime.now().difference(timeNow).inSeconds < 1) {
    i++;
  }

  NumberFormat formatter = NumberFormat('###,###,###,###');
  print('${formatter.format(i)}');

  Duration oneMicroSecond = Duration(microseconds: 1);
  timeNow = DateTime.now();
  int j = 0;

  while (DateTime.now().difference(timeNow).inSeconds < 1) {
    await Future.delayed(oneMicroSecond, () => j++);
  }

  print('${formatter.format(j)}');
  print(i / j);
}
