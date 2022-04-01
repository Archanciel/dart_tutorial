void main() {
  Iterable<int> it = getRange11(1, 4);
  print('main range obtained');

  it.forEach((element) {
    print('el $element');
  });
}

Iterable<int> getRange1(int start, int end) sync* {
  if (start <= end) {
    print('before start $start');
    yield start * 10;
    print('after start $start');
    for (final int val in getRange1(start + 1, end)) {
      print('before val $val');
      yield val * 100;
      print('after val $val');
    }
  }
}

Iterable<int> getRange11(int start, int end) sync* {
  if (start <= end) {
    yield start;
    for (final int val in getRange11(start + 1, end)) {
      yield val;
    }
  }
}

Iterable<int> getRange2(int start, int end) sync* {
  if (start > end) {
    print('before start $start');
    yield start * 10;
    print('after start $start');
  } else {
    for (final int val in getRange2(start + 1, end)) {
      print('before val $val');
      yield val * 100;
      print('after val $val');
    }
  }
}

Iterable<int> getRange3(int start, int end) sync* {
  // same output as getRange11()
  if (start <= end) {
    yield start;
    yield* getRange3(start + 1, end);
  }
}

Iterable<int> getRange4(int start, int end) sync* {
  // same output as getRange11()
  for (int i = start; i <= end; i++) {
    yield i;
  }
}
