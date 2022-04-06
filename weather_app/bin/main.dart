import 'dart:io';

import 'weather.dart';
import 'weather_api_client.dart';

void main(List<String> args) async {
  if (args.length < 1) {
    print('Syntax: dart .\\bin\main.dart <city>');
    // return
    args = ['lausanne']; // so that you can debug !
  }

  String city = args[0];
  final WeatherApiClient weatherApi = WeatherApiClient();

  try {
    Weather weather = await weatherApi.getWeather(city);
    print(weather);
  } on WeatherException catch (e) {
    print(e.message);
  } on SocketException catch (_) {
    print('No Internet. Fix the problem and retry !');
  } catch (e) {
    print(e);
  }
}
