import 'weather.dart';
import 'weather_api_client.dart';

void main(List<String> args) async {
  if (args.length < 1) {
    print('Syntax: dart .\\bin\main.dart <city>');
    // return
    args = ['london']; // so that you can debug !
  }

  String city = args[0];
  final WeatherApiClient weatherApi = WeatherApiClient();

  Weather weather = await weatherApi.getWeather(city);
  
}
