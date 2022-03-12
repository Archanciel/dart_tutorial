class TemperatureNoGetterSetter {
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
  double celsius;

  Temperature.celsius(this.celsius);
  Temperature.fahrenheit(double fahrenheit) : celsius = (fahrenheit - 32) / 1.8;

  double get fahrenheit => (celsius * 1.8) + 32;
  set fahrenheit(double fahrenheit) => celsius = (fahrenheit - 32) / 1.8;

  String description() {
    return 'celsius: $celsius = fahrenheit $fahrenheit';
  }
}

void main() {
  TemperatureNoGetterSetter tc_no_gs = TemperatureNoGetterSetter.celsius(20);
  TemperatureNoGetterSetter tf_no_gs = TemperatureNoGetterSetter.fahrenheit(68);

  print(tc_no_gs.description());
  print(tf_no_gs.description());

  Temperature tc = Temperature.celsius(20);
  Temperature tf = Temperature.fahrenheit(68);

  print(tc.description());
  print(tf.description());
  print(tc.celsius);
  print(tc.fahrenheit);

  Temperature tc_2 = Temperature.celsius(20);
  print(tc_2.celsius);
  tc_2.fahrenheit = 100;
  print(tc_2.celsius);
}
