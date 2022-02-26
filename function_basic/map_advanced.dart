void main() {
  List<int> lstInt = [1, 2, 3];

  print('squareLst: ${squareLst(lstInt)}');
  print('squareLstNull: ${squareLstNull(lstInt)}');
  print('squareLstInt: ${squareLstInt(lstInt)}');
  print('squareLstIntFunc: ${squareLstIntFunc(lstInt)}');
}

Iterable<int> squareLst(List<int> lst) {
  /*
  Passing an anonymous function defined using => to the List.map().
  Since => is used, the anonymous function applied by the map() method
  does return an int value. So, printing the Iterable does print squared
  integers.
  */
  return lst.map<int>((element) => element * element);
}

Iterable<Null> squareLstNull(List<int> lst) {
  /*
  Here, an anonymous function defined using {} is passed to the List.map()
  method. Since the anonymous function does not return the computed squared
  result, applying it in map method does return a null value. So, printing 
  the Iterable does print a list of null.
  */
  return lst.map<Null>((element) {
    element * element;
  });
}

Iterable<int> squareLstInt(List<int> lst) {
  /*
  To solve the preceding squareLstNull() problem, the {} anonymous function
  does return the computed squared result. So, printing the Iterable does print
  squared integers.
  */
  return lst.map<int>((element) {
    return element * element;
  });
}

Iterable<int> squareLstIntFunc(List<int> lst) {
  int sq(int val) {
    return val * val;
  }
  
  return lst.map<int>(sq);
}
