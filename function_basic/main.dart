void main() {
  print(describeNamedArgument(name: 'Jean-Pierre', age: 62));
  print(describeNamedArgument(age: 62, name: 'Jean-Pierre'));
  print(describeNamedArgument(name: 'No-Age'));

  print(describeNamedNullableArgument(name: 'Jean-Pierre', age: 62));
  print(describeNamedNullableArgument(age: 62, name: 'Jean-Pierre'));
  print(describeNamedNullableArgument(name: 'No-Age'));

  print(describeNamedRequiredArgument(name: 'Jean-Pierre', age: 62));
  print(describeNamedRequiredArgument(age: 62, name: 'Jean-Pierre'));
  //print(describeReq(name: 'No-Age'));
}

String describeNamedArgument({String name = '', int age = 0}) {
  return 'DNA: I am $name born in ${2022 - age}';
}

String describeNamedNullableArgument({String? name, int? age}) {
  return 'DNNA: I am $name born in ${2022 - ((age == null) ? 0 : age)}';
}

String describeNamedRequiredArgument({required String name, required int age}) {
  return 'DNRA: I am $name born in ${2022 - age}';
}
