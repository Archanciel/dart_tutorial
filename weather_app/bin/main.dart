import 'weather_api_client.dart';

void main(List<String> args) async {
  if (args.length < 1) {
    print('Syntax: dart .\\bin\main.dart <city>');
    // return
    args = ['london']; // so that you can debug !
  }

  WeatherApiClient client = WeatherApiClient();

  String city = args[0];

  final int locationId = await client.getLocationId(city);

  print(locationId);
}
