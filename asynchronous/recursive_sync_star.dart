// posted as answer on https://stackoverflow.com/questions/57492517/difference-between-yield-and-yield-in-dart/71713251#71713251

void main() {
  Iterable<int> it = getRangeYieldAnalysed(1, 4);
  print('main range obtained');

  it.forEach((element) {
    print('el $element');
  });
}

Iterable<int> getRangeYield(int start, int end) sync* {
  if (start <= end) {
    yield start;
    for (final int val in getRangeYield(start + 1, end)) {
      yield val;
    }
  }
}

Iterable<int> getRangeYieldAnalysed(int start, int end) sync* {
  if (start <= end) {
    print('before start $start');
    yield start * 10;
    print('after start $start');
    for (final int val in getRangeYieldAnalysed(start + 1, end)) {
      print('before val $val');
      yield val * 100;
      print('after val $val');
    }
  }
}

Iterable<int> getRangeYieldStar(int start, int end) sync* {
  // same output as getRangeYield()
  if (start <= end) {
    yield start;
    yield* getRangeYieldStar(start + 1, end);
  }
}

Iterable<int> getRangeForLoop(int start, int end) sync* {
  // same output as getRangeYield()
  for (int i = start; i <= end; i++) {
    yield i;
  }
}
