void main() {
  double positionalNonNullableArguments(int one, double two) {
    return one * two;
  }

  print(positionalNonNullableArguments(5, 56.79645)); // 283.98225

  double positionalNullableArguments([int one = 1, double two = 2]) {
    return one * two;
  }

  print(positionalNullableArguments()); // 2
  print(positionalNullableArguments(67)); // 134.0
  print(positionalNullableArguments(67, 4.44444)); // 297.77748
  // print(positionalNullableArguments(4.44444, 67)); // arg of type double not
  //                                                     assignable to int arg
  //                                                     error msg

  double namedNullableDefValArguments({int one = 1, double two = 2}) {
    // named arguments are not positional !
    return one * two;
  }

  print(namedNullableDefValArguments()); // 2.0
  print(namedNullableDefValArguments(one: 67)); // 134.0
  print(namedNullableDefValArguments(two: 67)); // 67.0
  print(namedNullableDefValArguments(one: 67, two: 4.44444)); // 297.77748
  print(namedNullableDefValArguments(two: 4.44444, one: 67)); // 297.77748

  double namedNullableNoDefValueArguments({int? one, double? two}) {
    // no default value arguments, compensated by using ?? null operator
    return (one ?? 1) * (two ?? 2);
  }

  print(namedNullableNoDefValueArguments()); // 2.0
  print(namedNullableNoDefValueArguments(one: 67)); // 134.0
  print(namedNullableNoDefValueArguments(two: 67)); // 67.0
  print(namedNullableNoDefValueArguments(one: 67, two: 4.44444)); // 297.77748
  print(namedNullableNoDefValueArguments(two: 4.44444, one: 67)); // 297.77748

  double namedNonNullableArguments({required int one, required double two}) {
    return one * two;
  }

  // print(namedNonNullableArguments()); // invalid
  // print(namedNonNullableArguments(one: 67)); // invalid
  // print(namedNonNullableArguments(two: 4.44444)); // invalid
  print(namedNonNullableArguments(one: 67, two: 4.44444)); // 297.77748
  print(namedNonNullableArguments(two: 4.44444, one: 67)); // 297.77748

//  int namedInvalidArgument({int one}) { //  parameter one can't have a value
//    return one ?? 0;                        of null error msg
//  }

  double positionalAndNamedNullableDefValArguments(double percent,
      {int one = 1, double two = 2}) {
    return (percent / 100) * one * two;
  }

  print(positionalAndNamedNullableDefValArguments(10)); // 0.2
  print(positionalAndNamedNullableDefValArguments(10, one: 67)); // 13.4
  print(positionalAndNamedNullableDefValArguments(10, two: 67)); // 6.7
  print(positionalAndNamedNullableDefValArguments(10,
      one: 67, two: 4.44444)); // 29.777748
  print(positionalAndNamedNullableDefValArguments(10,
      two: 4.44444, one: 67)); // 29.777748

  double positionalAndNamedNonNullableArguments(double percent,
      {required int one, required double two}) {
    return (percent / 100) * one * two;
  }

  // print(positionalAndNamedNonNullableArguments(10)); // invalid
  // print(positionalAndNamedNonNullableArguments(10, one: 67)); // invalid
  // print(positionalAndNamedNonNullableArguments(10, two: 4.44444)); // invalid
  print(positionalAndNamedNonNullableArguments(10,
      one: 67, two: 4.44444)); // 29.777748
  print(positionalAndNamedNonNullableArguments(10,
      two: 4.44444, one: 67)); // 29.777748

  double positionalNonNullableAndPositionalNullableDefValArguments(
      double percent,
      [int one = 1,
      double two = 2]) {
    return (percent / 100) * one * two;
  }

  print(positionalNonNullableAndPositionalNullableDefValArguments(10)); // 0.2
  print(positionalNonNullableAndPositionalNullableDefValArguments(
      10, 67)); // 13.4
  print(positionalNonNullableAndPositionalNullableDefValArguments(
      10, 1, 67)); // 6.7
  print(positionalNonNullableAndPositionalNullableDefValArguments(
      10, 67, 4.44444)); // 29.777748
//  print(positionalNonNullableAndPositionalNullableDefValArguments(
//      10, 4.44444, 67)); // arg of type double can't be assigned to parm type 
//                            int error msg

  double positionalNonNullableAndPositionalNullableArguments(
      double percent,
      [int? one,
      double? two]) {
    // no default value arguments, compensated by using ?? null operator
    return (percent / 100) * (one ?? 1) * (two ?? 2); // parentheses required !
  }

  print(positionalNonNullableAndPositionalNullableArguments(10)); // 0.2
  print(positionalNonNullableAndPositionalNullableArguments(
      10, 67)); // 13.4
  print(positionalNonNullableAndPositionalNullableArguments(
      10, 1, 67)); // 6.7
  print(positionalNonNullableAndPositionalNullableArguments(
      10, 67, 4.44444)); // 29.777748
//  print(positionalNonNullableAndPositionalNullableArguments(
//      10, 4.44444, 67)); // arg of type double can't be assigned to parm type 
//                            int error msg
}
