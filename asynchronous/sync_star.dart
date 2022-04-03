// sync* functions return an Iterable
Iterable<int> evenNumbersDownFrom(int n) sync* {
  // the body isn't executed until an Iterator invokes moveNext(), forEach(), ...
  int k = n;

  print('generator started');

  while (k >= 0) {
    if (k % 2 == 0) {
      // 'yield' suspends the function
      yield k;
    }
    k--;
  }
  
  print('generator ended');
  // when the end of the function is executed,
  // there are no more values in the Iterable, and
  // moveNext() returns false to the caller
}
void main() {
  print('starting to iterate...');
  evenNumbersDownFrom(7).forEach((int val) => print('generated value: $val'));
  print('end of main');
}
