extension ParseIntStringExtension on String { // ParseIntStringExtension name
//                                               was added so import is working
  int? strToIntOrNull() => int.tryParse(this);
}

/*
extension on String {
  int? strToIntOrNull() {
    print('parsing ...');
    return int.tryParse(this);
  }



*/
