void main() {
  print(describePositionalArgument('Jean-Pierre', 62));
  print(describePositionalNullableArgument('Jean-Pierre', null));
  print(describePositionalNullableArgument(null, null));
}

String describePositionalArgument(String name, int age) {
  return 'DPA: I am $name born in ${2022 - age}';
}

String describePositionalNullableArgument(String? name, int? age) {
  return 'DPNA: I am ${name ?? 'No Name'} born in ${2022 - (age ?? 0)}';
}

String describePositionalDefaultArgument([String name = '', int age = 0]) {
  return 'DPDA: I am $name born in ${2022 - age}';
}
