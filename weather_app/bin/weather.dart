class Weather {
  final String weatherState;
  final double minTemp;
  final double maxTemp;
  final double temp;

  const Weather(
      {required this.weatherState,
      required this.minTemp,
      required this.maxTemp,
      required this.temp});

  factory Weather.fromJson(Map<String?, Object?> data) {
    final List weatherDataLst = data['consolidated_weather'] as List;
    final Map todayWeatherDataLst = weatherDataLst[0];

    return Weather(
        weatherState: todayWeatherDataLst['weather_state_name'],
        minTemp: todayWeatherDataLst['min_temp'],
        maxTemp: todayWeatherDataLst['max_temp'],
        temp: todayWeatherDataLst['the_temp']);
  }

  @override
  String toString() {
    return '''
weather state: $weatherState
min temp: $minTemp
max temp: $maxTemp
temp: $temp''';
  }
}
