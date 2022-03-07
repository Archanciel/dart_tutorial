void main() {
  /*
  SUMMARY:
    - using ?? null operator
    - using ??= default value operator or null aware operator
    - what is ?.
    - what is …?
  */

  // using ?? null operator
  int? nullInt;

  final int res = 5 * (nullInt ?? 1);
  print('res $res'); // res 5

  List<int> intLst = [
    3,
    nullInt ?? 0,
  ];
  print('intLst $intLst'); // intLst [3, 0]

  List<int?> nullIntLst = [
    3,
    nullInt,
  ];
  print('nullIntLst $nullIntLst'); // nullIntLst [3, null]

  Iterable<int> tenIntIterator = nullIntLst.map((int? x) => 10 * (x ?? 0));
  print('tenIntIterator $tenIntIterator'); // tenIntIterator (30, 0)

  Map<String, int> intMap = {'one': nullInt ?? 0, 'two': 2};
  print('intMap $intMap'); // intMap {one: 0}

  int two =
      intMap['two'] ?? 2; /*  The index [] operator on the Map class returns
                              null if the key isn’t present. This implies
                              that the return type of that operator must be
                              nullable or that a ?? default operator or
                              a ! assertion operator is used.
                           */
  int twoTwo = intMap['two']!;
  print('twoTwo ${twoTwo * 10}'); // twoTwo 20

  // using ??= default value operator or null aware operator
  int i = nullInt ??= 0;
  print('i $i'); // i 0

  // what is ?.
  // what is …?    
}
