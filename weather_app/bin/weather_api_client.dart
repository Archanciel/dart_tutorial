import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weather.dart';

class WeatherException implements Exception { // extends not possible !!!
  final String _message;

  WeatherException(String message) : _message = message;

  String get message => _message;
}

class WeatherApiClient {
  static const String baseUrl = 'https://www.metaweather.com/api';

  var url = Uri.parse('https://example.com/whatsit/create');

  Future<int> getLocationId(String city) async {
    final String urlStr = '$baseUrl/location/search/?query=$city';
    final url = Uri.parse(urlStr);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Error getting location id for $city');
    }

    final locationJson = jsonDecode(response.body) as List;

    if (locationJson.isEmpty) {
      throw WeatherException('City $city not found');
    }

    return locationJson.first['woeid'] as int;
  }

  Future<Weather> fetchWeather(int locationId) async {
    final String urlstr = '$baseUrl/location/$locationId';
    final url = Uri.parse(urlstr);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw WeatherException(
          'Error getting weather for location id $locationId');
    }

    final weatherJsonRootMap = jsonDecode(response.body);
    //print(response.body);
    final weather = Weather.fromJson(weatherJsonRootMap);

    final List weatherDataLst =
        weatherJsonRootMap['consolidated_weather'] as List;
    final Map todayWeatherDataMap = weatherDataLst[0];
    final weather2 = Weather.fromJsonNoFactory(todayWeatherDataMap);

    return weather;
//    return weather2;
  }

  Future<Weather> getWeather(String city) async {
    final int locationId = await getLocationId(city);
    
    return await fetchWeather(locationId);
  }
}
