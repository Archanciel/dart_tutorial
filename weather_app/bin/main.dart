import 'weather_api_client.dart';

void main(List<String> args) {
  if (args.length < 1) {
    print('Syntax: dart .\\bin\main.dart <city>');
    // return
    args = ['london']; // so that you can debug !
  }

  WeatherApiClient client = WeatherApiClient();

  String city = args[0];
  client.getLocationId(city).then((value) => print(value));
}
