// extension SumIterable<T> on Iterable<T> { // causes compile error 
//           'the operator '+' isn't defined for the class 'Object?'.
extension SumIterable<T extends num> on Iterable<T> {
  T sumAll() => reduce((value, element) => (value + element) as T);
}

void main() {
  List<double> ld = [1.32, 5.98, 1.75];
  double totalD = ld.reduce((value, element) => value + element);
  print(totalD); // 9.05
  print(ld.sumAll()); // 9.05

  List<int> li = [1, 5, 1];
  int totalI = li.reduce((value, element) => value + element);
  print(totalI); // 7
  print(li.sumAll()); // 7
}
