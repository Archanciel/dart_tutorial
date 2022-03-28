Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () {
    throw UnsupportedError('out of coffee');
//    return 'ristretto';
  });
}

void main() {
  print('main: start');

  fetchUserOrder()
      .then((value) {
        print(value);
      })
      // my question: https://stackoverflow.com/questions/71652743/how-can-a-value-of-type-void-can-t-be-returned-by-the-onerror-handler-o
      .catchError((error) => print(error.message))
      .whenComplete(() => print('complete'));
}
