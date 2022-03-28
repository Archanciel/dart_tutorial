import 'dart:io';

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => 'ristreto');
}

void main() {
  print('main start');

  bool stop = false;

  fetchUserOrder().then((value) {
    stop = true;
    print(value);
  });

  print('main waiting ...');

  while (!stop) {
    sleep(Duration(milliseconds: 200)); //  This blocks the entire process
//                                          (isolate), so other async functions
//                                          will not be processed.
//
// sleep() completely blocks the entire isolate. No Dart code will run at all
// while it is sleeping. It probably compiles to something like C++'s
// std::this_thread::sleep_for. Future.delayed() schedules the async function
// to resume later, but then it returns control to the Dart event loop so that
// other async functions can continue to run
  }

  print('main done');
}
