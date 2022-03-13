class Temperature {
  double celsius;

  Temperature.celsius(this.celsius);
  Temperature.fahrenheit(double fahrenheit) : celsius = (fahrenheit - 32) / 1.8;

  double get fahrenheit => (celsius * 1.8) + 32;

  set fahrenheit(double value) => celsius = (value - 32) / 1.8;
}

void main() {
  Temperature ts = Temperature.celsius(20);
  Temperature tf = Temperature.fahrenheit(68);

  print('${ts.celsius} °C = ${ts.fahrenheit} °F');
  print('${tf.celsius} °C = ${tf.fahrenheit} °F');

  ts.fahrenheit = 100;
  print('${ts.celsius} °C = ${ts.fahrenheit} °F');
}
