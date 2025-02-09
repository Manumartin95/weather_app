import 'package:weather_app/features/weather/domain/weather.dart';

abstract class WeatherRepository{
  Future<Weather> getWeather(String location);
}