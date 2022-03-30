void main() {
  print('main: start');

  Future.delayed(Duration(seconds: 5), () => 'ristretto prepared after 5 seconds')
      .then((value) => print(value));
  print('before Future completed');
}

