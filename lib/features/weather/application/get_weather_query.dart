import 'package:weather_app/core/use-case/use_case.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';

class GetWeatherQuery implements UseCase<String, dynamic> {
  WeatherRepository repository;

  GetWeatherQuery({required this.repository});

  @override
  call(String location) {
    return repository.getWeather(location);
  }
}
