void main() {
  /*
  SUMMARY:
    - using ?? null operator. Does not update null value of source operand
    - using ??= default value operator or null aware operator. Does update null 
      value of source operand 
    - what is ?.
    - what is …?
  */

  int? nullInt;

  final int res = 5 * (nullInt ?? 1);
  print('res $res'); // res 5
  print('nullInt $nullInt'); // nullInt null

  List<int> intLst = [
    3,
    nullInt ?? 0,
  ];
  print('intLst $intLst'); // intLst [3, 0]
  print('nullInt $nullInt'); // nullInt null

  List<int?> nullIntLst = [
    3,
    nullInt ??= 10,
  ];
  print('nullIntLst $nullIntLst'); // nullIntLst [3, null]
  print('nullInt $nullInt'); // nullInt 10

  Iterable<int> tenIntIterator = nullIntLst.map((int? x) => 10 * (x ?? 0));
  print('tenIntIterator $tenIntIterator'); // tenIntIterator (30, 0)

  double? nulldouble;
  Map<String, double> doubleMap = {'one': nulldouble ?? 0, 'two': 2};
  print('doubleMap $doubleMap'); // doubleMap {one: 0.0, two: 2.0}
  print('nullDouble $nulldouble');

  double doubleThree = doubleMap['three'] ?? 3; /* The index [] operator on the  
                              Map classreturns null if the key isn’t present.  
                              This implies that the return type of that operator  
                              must be nullable or that a ?? default operator or
                              a ! assertion operator is used. */

  print('three $doubleThree'); // three 3
  print("intMap['three'] ${doubleMap['three']}"); // doubleMap['three'] null
  doubleThree = doubleMap['three'] ??= 3;
  print("intMap['three'] ${doubleMap['three']}"); // doubleMap['three'] 3

  // what is ?.
  // what is …?
}
