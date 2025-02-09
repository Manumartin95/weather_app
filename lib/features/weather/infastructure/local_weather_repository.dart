import 'package:weather_app/features/weather/domain/weather_repository.dart';
import 'package:weather_app/features/weather/infastructure/mother/weather_mother.dart';

class LocalWeatherRepository implements WeatherRepository {
  @override
  getWeather(String location) {
    return WeatherMother.weather();
  }

  LocalWeatherRepository();
}
