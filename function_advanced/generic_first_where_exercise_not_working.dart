void main() {
  const List<int> intLst = [1, 2, 3, 4];

  print(myFirstWhereFunc(intLst, 4, -1));
  print(myFirstWhereFunc(intLst, 5, -1));

  const List<String> strLst = ['coucou', 'go', 'bold', 'tooltip'];

  print(myFirstWhereFunc(strLst, 'go', 'not exist'));
  print(myFirstWhereFunc(strLst, 'ok', 'not exist'));
}

T myFirstWhereFunc<T>(List<T> lst, T searchVal, T defaultVal) {
  return lst.firstWhere((element) => element == searchVal, orElse: <T> () {
    return defaultVal;
  });
}
