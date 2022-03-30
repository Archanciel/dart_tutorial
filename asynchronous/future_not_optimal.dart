Future<String> fetchUserOrder() => Future.delayed(Duration(seconds: 2), () {
      throw UnsupportedError('out of coffee');
//    return 'ristretto';
    });

void main() {
  print('main: start');

  fetchUserOrder()
      .then<void>((value) { // adding <void> to then() method eliminates
//                             the compiler warning displayed on catchError()
//                             line "value of type 'void' can't be returned by
//                             the 'onError' handler because it must be
//                             assignable to 'FutureOr<Null>'
        print(value);
      })
      .catchError((error) => print('Problem: ${error.message}')) 
      .whenComplete(() => print('complete'));
}
