/*
The functions below are implemented in this Dart file:

positionalNonOptionalNullableNoDefValArguments
positionalOptionalNullableDefValArguments
positionalOptionalNullableNoDefValArguments
positionalNonNullableAndPositionalOptionalNullableNoDefValArguments
positionalNonNullableAndPositionalOptionalNullableDefValArguments
*/
void main() {
  double positionalNonOptionalNullableNoDefValArguments(
      // the argumwnts are not optional. Although they are nullable, they must
      // be provided
      int? one,
      double? two) {
    // no default value arguments, compensated by using ?? null operator
    return (one ?? 1) * (two ?? 2); // parentheses required !
  }

  // print(positionalNonOptionalNullableNoDefValArguments()); // 2 positional
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
}