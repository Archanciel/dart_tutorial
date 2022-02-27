void main() {
  const List<int> lst = [1, 2, 3, 4];

  final Iterable<int> even = lst.where((element) => element % 2 == 0);

  print(even);

  final int first = lst.firstWhere((element) => element >= 4, orElse: () => -1);

  print(first);
}
