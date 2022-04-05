class Weather {
  final double _temperature;

  Weather({required double temperature}) : _temperature = temperature;
  Weather.fromJson(Map<String?, Object?> data) : _temperature = 8 {
    throw UnimplementedError();
  }

  double get temperature => _temperature;
}
