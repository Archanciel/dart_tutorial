import 'generic_iterable_extension.dart';

void main() {
  List<int> intLst = [1, 2, 3];
  int sum = intLst.reduce((value, element) => value + element);
  print('one $sum');

  int sum2 = intLst.sumNum();
  print('two $sum2');

  List<double> doubleLst = [1.1, 2.2, 3.3];
  double sum3 = doubleLst.sumNum();
  print('three $sum3');
}
