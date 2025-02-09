import 'package:weather_app/features/weather/domain/weather_repository.dart';

class GetWeatherQuery {
  WeatherRepository repository;

  GetWeatherQuery({required this.repository});

  call(String location) {
    return repository.getWeather(location);
  }
}
