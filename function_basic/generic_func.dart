void main() {
  List<int> lstInt = [1, 2, 3];
  List<double> lstDouble = [11.65, 2.74, 3.897646];

  print('''computeLstGeneric int square: 
    ${computeLstGeneric<int>(lstInt, (int val) => val * val)}''');
  print('''computeLstGeneric double cube: 
    ${computeLstGeneric<double>(lstDouble, (double val) => val * val * val)}''');
  print('''computeLstGenericReturn double cube rounded to int: 
    ${computeLstGenericReturn<double, int>(lstDouble, (double val) => (val * val * val).round())}''');
}

List<T> computeLstGeneric<T>(List<T> lst, T Function(T) f) {
  List<T> resLst = [];

  for (T elem in lst) {
    resLst.add(f(elem));
  }

  return resLst;
}

List<R> computeLstGenericReturn<T, R>(List<T> lst, R Function(T) f) {
  List<R> resLst = [];

  for (T elem in lst) {
    resLst.add(f(elem));
  }

  return resLst;
}
