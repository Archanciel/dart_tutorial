extension on int {
  List<int> rangeTo(int to) {
    List<int> lst = [];

    for (int i = this;i <= to;i++) {
      lst.add(i);
    }

    return lst;
  }
}

void main() {
  print(3.rangeTo(12)); // [3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
}
