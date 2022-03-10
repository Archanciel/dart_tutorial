void main() {
  /*
   * Using ??= named default value operator or null aware operator.
   */

  double? dn;
  print(dn?.round()); // null
  double e = dn ?? 100.500001;
  print(dn); // null
  print(e); // 100.500001

  Map<String, double> mp = {'one': 1.0, 'two': 2.0};              
  double f = mp['boo'] ?? 4.0;
  print(mp['boo']); // null
  print(f); // 4

  double? dnn;
  dnn ??= 5.78;
  print(dnn); // 5.78

  double? dnnn = 55.01;
  //dnnn = null; // if executed, then on next line dnnn == 55.32
  dnnn ??= 55.32;
  print(dnnn); // 55.01. Since dnnn was not null, its value was not changed by ??=  
}