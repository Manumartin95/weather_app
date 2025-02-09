import 'package:injectable/injectable.dart';
import 'package:weather_app/features/weather/domain/weather_repository.dart';
import '../domain/weather.dart';
import 'mother/weather_mother.dart';

@Injectable(as: WeatherRepository)
class LocalWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> getWeather(String location) async {
    return Weather.fromJson(WeatherMother.weather());
  }

  LocalWeatherRepository();
}
