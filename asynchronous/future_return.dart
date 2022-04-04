import 'dart:math';

Future<String> returnStringAsync() async {
  // If the function is called asynchronously, String is returned, else
  // Future<String> is returned.
  return await 'hello';
}

void main() async {
  final randomGenerator = Random(DateTime.now().hashCode);
  final bool doAwait = randomGenerator.nextBool();
  var res; // type of res can't be defined since according to the bool doAwait
  // value, a String or a Future<String> is assigned to res

  if (doAwait) {
    res = await returnStringAsync(); // String is assigned to res
  } else {
    res = returnStringAsync(); // Future<String> is assigned to res
    (res as Future).then((value) => print(
        'Future<String> contains $value')); // Future<String> contains hello
  }

  print('doAwait == $doAwait');
  print(res); // hello or Instance of 'Future<String>'
}
