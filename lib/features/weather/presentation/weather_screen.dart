import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/application/get_weather_query.dart';

import '../../../core/di/dependency_injection.dart';
import '../domain/weather.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late Future<Weather> _weatherFuture;

  @override
  void initState() {
    super.initState();
    final getWeather = getIt<GetWeatherQuery>();
    _weatherFuture = getWeather('Madrid');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _weatherFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          if (snapshot.hasData) {
            final weather = snapshot.data!;
            return Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(weather.location.name),
                Text(weather.location.country),
                Text(
                  weather.current.tempC.toString(),
                  style: TextStyle(fontSize: 30),
                )
              ],
            );
          } else {
            return const Text('No data');
          }
        });
  }
}
