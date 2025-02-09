import 'package:weather_app/features/weather/domain/weather.dart';

abstract class WeatherRepository{
  Weather getWeather(String location);
}