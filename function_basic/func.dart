/*
The functions below are implemented in this Dart file:

positionalNonOptionalNonNullableArguments
positionalNonOptionalNullableNoDefValArguments
positionalNonOptionalNullableDefValArguments ILLEGAL !
positionalOptionalNullableDefValArguments
positionalOptionalNullableNoDefValArguments
positionalNonNullableAndPositionalOptionalNullableNoDefValArguments
positionalNonNullableAndPositionalOptionalNullableDefValArguments
namedNullableDefValArguments
namedNullableNoDefValueArguments
namedNonNullableArguments
positionalAndNamedNullableDefValArguments
positionalAndNamedNonNullableArguments
*/

void main() {
  double positionalNonOptionalNonNullableArguments(int one, double two) {
    return one * two;
  }

  print(positionalNonOptionalNonNullableArguments(5, 56.79645)); // 283.98225

  double positionalNonOptionalNullableNoDefValArguments(
      // the argumwnts are not optional. Although they are nullable, they must
      // be provided
      int? one,
      double? two) {
    // no default value arguments, compensated by using ?? null operator
    return (one ?? 1) * (two ?? 2); // parentheses required !
  }

  // print(positionalNonOptionalNullableNoDefValArguments()); // 2.0 positional
  //                              argument(s) expected, but 0 found. Try adding
  //                              the missing arguments
  print(positionalNonOptionalNullableNoDefValArguments(null, null)); // 2.0
  print(positionalNonOptionalNullableNoDefValArguments(67, null)); // 134.0
  print(
      positionalNonOptionalNullableNoDefValArguments(null, 4.44444)); // 4.44444
  print(
      positionalNonOptionalNullableNoDefValArguments(67, 4.44444)); // 297.77748
  // print(positionalNonOptionalNullableNoDefValArguments(4.44444, 67)); // arg
  //                                                     of type double can't
  //                                                     be assigned to int arg
  //                                                     error msg

  double positionalNonOptionalNullableDefValArguments(// INVALID !
      // int one = 1, // Named parms must be enclosed in {} error msg
      // double two = 2) { // Named parms must be enclosed in {} error msg
      ) {
    return 0.0; // one * two;
  }

  double positionalOptionalNullableDefValArguments(
      [int one = 1, double two = 2]) {
    // since the argumwnts are [] enclosed, they are optional
    return one * two;
  }

  print(positionalOptionalNullableDefValArguments()); // 2.0
  print(positionalOptionalNullableDefValArguments(67)); // 134.0
  print(positionalOptionalNullableDefValArguments(67, 4.44444)); // 297.77748
  // print(positionalOptionalNullableDefValArguments(4.44444, 67)); // arg
  //                                                     of type double can't
  //                                                     be assigned to int arg
  //                                                     error msg

  double positionalOptionalNullableNoDefValArguments([int? one, double? two]) {
    // since the argumwnts are [] enclosed, they are optional
    return (one ?? 1) * (two ?? 2);
  }

  print(positionalOptionalNullableNoDefValArguments()); // 2.0
  print(positionalOptionalNullableNoDefValArguments(67)); // 134.0
  print(positionalOptionalNullableNoDefValArguments(67, 4.44444)); // 297.77748
  // print(positionalOptionalNullableNoDefValArguments(4.44444, 67)); // arg
  //                                                     of type double can't
  //                                                     be assigned to int arg
  //                                                     error msg

  double positionalNonNullableAndPositionalOptionalNullableNoDefValArguments(
      double percent,
      [int? one,
      double? two]) {
    // no default value arguments, compensated by using ?? null operator
    return (percent / 100) * (one ?? 1) * (two ?? 2); // parentheses required !
  }

  print(positionalNonNullableAndPositionalOptionalNullableNoDefValArguments(
      10)); // 0.2
  print(positionalNonNullableAndPositionalOptionalNullableNoDefValArguments(
      10, 67)); // 13.4
  print(positionalNonNullableAndPositionalOptionalNullableNoDefValArguments(
      10, 1, 67)); // 6.7
  print(positionalNonNullableAndPositionalOptionalNullableNoDefValArguments(
      10, 67, 4.44444)); // 29.777748
//  print(positionalNonNullableAndPositionalOptionalNullableNoDefValArguments(
//      10, 4.44444, 67)); // arg of type double can't be assigned to parm type
//                            int error msg

  double positionalNonNullableAndPositionalOptionalNullableDefValArguments(
      double percent,
      [int one = 1,
      double two = 2]) {
    return (percent / 100) * one * two;
  }

  print(positionalNonNullableAndPositionalOptionalNullableDefValArguments(
      10)); // 0.2
  print(positionalNonNullableAndPositionalOptionalNullableDefValArguments(
      10, 67)); // 13.4
  print(positionalNonNullableAndPositionalOptionalNullableDefValArguments(
      10, 1, 67)); // 6.7
  print(positionalNonNullableAndPositionalOptionalNullableDefValArguments(
      10, 67, 4.44444)); // 29.777748
//  print(positionalNonNullableAndPositionalOptionalNullableDefValArguments(
//      10, 4.44444, 67)); // arg of type double can't be assigned to parm type
//                            int error msg

  double namedNullableDefValArguments({int one = 1, double two = 2}) {
    // NAMED ARGUMENTS ARE NOT POSITIONAL !
    print('named arguments are not positional'.toUpperCase());
    return one * two;
  }

  print(namedNullableDefValArguments()); // 2.0
  print(namedNullableDefValArguments(one: 67)); // 134.0
  print(namedNullableDefValArguments(two: 67)); // 67.0
  print(namedNullableDefValArguments(one: 67, two: 4.44444)); // 297.77748
  print(namedNullableDefValArguments(two: 4.44444, one: 67)); // 297.77748
  // print(namedNullableDefValArguments(67, 4.44444)); // unnamed args illegal

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
}
