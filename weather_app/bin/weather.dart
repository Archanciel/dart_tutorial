class Weather {
  final double _temperature;
  Weather({required double temperature}) : _temperature = temperature;
  Weather.fromJson(weatherJson) {
    
  }

  double get temperature => _temperature;
}
