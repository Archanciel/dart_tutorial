import 'dart:convert';

import 'package:http/http.dart' as http;

import 'weather.dart';

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

    return locationJson.first['woeid'] as int;
  }

  Future<Weather> fetchWeather(int locationId) async {
    final String urlstr = '$baseUrl/location/$locationId';
    final url = Uri.parse(urlstr);
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Error getting weather for location id $locationId');
    }

    final weatherJson = jsonDecode(response.body);
    final weather = Weather.fromJson(weatherJson);

    return weather;
  }
}
