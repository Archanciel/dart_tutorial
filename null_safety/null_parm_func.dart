void main() {
  String? nullStr;

  print('res ${handlePossibleNullString(nullStr)}'); // res
  print('res ${handlePossibleNullString('hello')}'); // res HELLO
//  print('res ${handleExpectedNonNullString(nullStr)}'); // res HELLO
  print('res ${handleExpectedNonNullStringBangOpOnVariable(nullStr)}'); // res HELLO
}

String handlePossibleNullString(String? possibleNullStr) {
  possibleNullStr ??= '';
  return possibleNullStr.toUpperCase();
}

String handlePossibleNullStringInvalid(String? possibleNullStr) {
  // return possibleNullStr?.toUpperCase(); // Error: A value of type 'String?'
  // can't be returned from a function with return type 'String' because
  // 'String?' is nullable and 'String' isn't.
  return '';
}

String handleExpectedNonNullString(String? possibleNullStr) {
  return possibleNullStr!.toUpperCase();
}

String handleExpectedNonNullStringBangOpOnVariable(String? possibleNullStr) {
  possibleNullStr!;
  return possibleNullStr.toUpperCase();
}
