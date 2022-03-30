void main() {
  print('main: start');

  Future.delayed(Duration(seconds: 2), () => 'ristretto')
      .then((value) => print(value))
      .catchError((error) => print('Problem: ${error.message}')) 
      .whenComplete(() => print('complete'));
}

