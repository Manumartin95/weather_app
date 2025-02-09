import 'package:injectable/injectable.dart';
import 'package:weather_app/core/use-case/use_case.dart';
import 'package:weather_app/features/weather/domain/weather.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';

@injectable
class GetWeatherQuery implements UseCase<String, Weather> {
  WeatherRepository repository;

  GetWeatherQuery({required this.repository});

  @override
  Future<Weather> call(String location) {
    return repository.getWeather(location);
  }
}
