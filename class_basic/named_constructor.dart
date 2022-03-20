class TemperatureNoGetterSetter {
  // Named constructor class
  double celsius;
  double fahrenheit;

  TemperatureNoGetterSetter.celsius(this.celsius)
      : fahrenheit = (celsius * 1.8) + 32;
  TemperatureNoGetterSetter.fahrenheit(this.fahrenheit)
      : celsius = (fahrenheit - 32) / 1.8;

  String description() {
    return 'celsius: $celsius = fahrenheit $fahrenheit';
  }
}

class Temperature {
  // Named constructor class
  double celsius;

  Temperature.celsius(this.celsius);
  Temperature.fahrenheit(double fahrenheit) : celsius = (fahrenheit - 32) / 1.8;

/*
  double get fahrenheit => (celsius * 1.8) + 32;
  set fahrenheit(double tempFahrenheit) => celsius = (tempFahrenheit - 32) / 1.8;
*/

  double get fahrenheit {
    print('fahrenheit getter called');
    return (celsius * 1.8) + 32;
  }

  set fahrenheit(double tempFahrenheit) {
    print('fahrenheit setter called');
    celsius = (tempFahrenheit - 32) / 1.8;
  }

  String description() {
    return 'celsius: $celsius = fahrenheit $fahrenheit';
  }
}

void main() {
  TemperatureNoGetterSetter tc_no_gs = TemperatureNoGetterSetter.celsius(20);
  TemperatureNoGetterSetter tf_no_gs = TemperatureNoGetterSetter.fahrenheit(68);

  print(tc_no_gs.description()); // celsius: 20.0 = fahrenheit 68.0
  print(tf_no_gs.description()); // celsius: 20.0 = fahrenheit 68.0

  Temperature tc = Temperature.celsius(20);
  Temperature tf = Temperature.fahrenheit(68);

  print('\ntc.description');
  print(tc.description()); // tc.description
//                            fahrenheit getter called
//                            celsius: 20.0 = fahrenheit 68.0

  print('\ntf.description');
  print(tf.description()); // tf.description
//                            fahrenheit getter called
//                            celsius: 20.0 = fahrenheit 68.0


  print('\ntc.celsius');
  print('tc.celsius ${tc.celsius}'); // tc.celsius
//                                      tc.celsius 20.0

  print('\ntc.fahrenheit');
  print('tc.fahrenheit ${tc.fahrenheit}'); // tc.fahrenheit
//                                            fahrenheit getter called
//                                            tc.fahrenheit 68.0
//                                            20.0

  Temperature tc_2 = Temperature.celsius(20);
  print(tc_2.celsius);

  print('\ntc_2.fahrenheit = 100');
  tc_2.fahrenheit = 100;
  print(tc_2.celsius); // tc_2.fahrenheit = 100
//                        fahrenheit setter called
//                        37.77777777777778
}

