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

  factory Weather.fromJson(Map<String?, Object?> weatherJsonRootMap) {
    // weatherJsonRootMap = http.get(url).body
    final List weatherDataLst = weatherJsonRootMap['consolidated_weather'] as List;
    final Map todayWeatherDataMap = weatherDataLst[0];

    return Weather(
        weatherState: todayWeatherDataMap['weather_state_name'],
        minTemp: todayWeatherDataMap['min_temp'],
        maxTemp: todayWeatherDataMap['max_temp'],
        temp: todayWeatherDataMap['the_temp']);
  }

  Weather.fromJsonNoFactory(Map todayWeatherDataMap)
      // works, but has the disadvantage that     
      //  final List weatherDataLst = data['consolidated_weather'] as List; and
      //  final Map todayWeatherDataMap = weatherDataLst[0]; must be moved to
      //  constructor caller, which is bad !
      : weatherState = todayWeatherDataMap['weather_state_name'],
        minTemp = todayWeatherDataMap['min_temp'],
        maxTemp = todayWeatherDataMap['max_temp'],
        temp = todayWeatherDataMap['the_temp'];

  @override
  String toString() {
    return '''
weather state: $weatherState
min temp: $minTemp
max temp: $maxTemp
temp: $temp''';
  }
}
