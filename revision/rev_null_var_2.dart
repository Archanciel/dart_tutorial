void main() {
  String? nullPossibleStr;

  String nonNullStr = nullPossibleStr ??= 'NON Null';

  print(nonNullStr.toLowerCase());
}
