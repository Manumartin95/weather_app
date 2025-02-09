import 'package:weather_app/features/weather/domain/weather_repository.dart';
import '../domain/weather.dart';
import 'mother/weather_mother.dart';

class LocalWeatherRepository implements WeatherRepository {
  @override
  Weather getWeather(String location) {
    return WeatherMother.weather();
  }

  LocalWeatherRepository();
}
