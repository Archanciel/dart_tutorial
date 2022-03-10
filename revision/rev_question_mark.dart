void main() {
  /*
  SUMMARY:
    - using ?? null operator. Does not update null value of source operand
    - using ??= default value operator or null aware operator. Does update null 
      value of source operand 
    - what is …? null-aware spread operator
  */

  int? nullIntOne;

  int res = 5 * (nullIntOne ?? 1);
  print('res $res'); // res 5
  print('nullIntOne $nullIntOne'); // nullIntOne null

  int? nullIntTwo;

  res = 5 * (nullIntTwo ??= 1);
  print('res $res'); // res 5
  print('nullIntTwo $nullIntTwo'); // nullIntTwo 1

  List<int> intLstOne = [
    3,
    nullIntOne ?? 0,
  ];
  print('intLstOne $intLstOne'); // intLstOne [3, 0]
  print('nullInt $nullIntOne'); // nullInt null

  List<int> intLstTwo = [
    3,
    nullIntOne ??= 0,
  ];
  print('intLstTwo $intLstTwo'); // intLstTwo [3, 0]
  print('nullIntOne $nullIntOne'); // nullInt 0

  int? nullIntThree;
  List<int?> nullIntLst = [
    null,
    nullIntThree ?? 10,
  ];
  print('nullIntLst $nullIntLst'); // nullIntLst [null, 10]
  print('nullIntThree $nullIntThree'); // nullIntThree null

  Iterable<int> tenIntIterator = nullIntLst.map((int? x) => 10 * (x ?? 0));
  print('tenIntIterator $tenIntIterator'); // tenIntIterator (0, 100)

  nullIntLst = [
    null,
    nullIntThree ??= 10,
  ];

  print('nullIntLst $nullIntLst'); // nullIntLst [null, 10]
  print('nullIntThree $nullIntThree'); // nullIntThree 10

  double? nullDouble;
  Map<String, double> doubleMap = {'one': nullDouble ?? 1, 'two': 2};
  print('doubleMap $doubleMap'); // doubleMap {one: 1.0, two: 2.0}
  print('nullDouble $nullDouble'); // nullDouble null

  double doubleThree = doubleMap['three'] ?? 3; /* The index [] operator on the  
                              Map classreturns null if the key isn’t present.  
                              This implies that the return type of that operator  
                              must be nullable or that a ?? default operator or
                              a ! assertion operator is used. */

  print('doubleThree $doubleThree'); // doubleThree 3
  print("doubleMap['three'] ${doubleMap['three']}"); // doubleMap['three'] null
  doubleThree = doubleMap['three'] ??= 3;
  print("doubleMap['three'] ${doubleMap['three']}"); // doubleMap['three'] 3

  // what is …? null-aware spread operator
  
  List<int> intLstThree = [1, 2, 23, 4];

  List<int>? intLstTwoNull;
  print('intLstTwoNull $intLstTwoNull'); // intLstTwoNull null

  List<int> intLstFour = [
    10,
    20,
    230,
    40,
    ...?intLstTwoNull, // ...intLstTwoNull causes compile error 'A nullable 
                       // expression can't be used in a spread'
    ...intLstThree,
  ];
  print('intLstFour $intLstFour'); // intLstFour [10, 20, 230, 40, 1, 2, 23, 4]
}
