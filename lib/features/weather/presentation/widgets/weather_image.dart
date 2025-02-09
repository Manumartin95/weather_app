import 'package:flutter/material.dart';

class WeatherImage extends StatelessWidget {
  final double temperature;

  const WeatherImage({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    if (temperature > 25) {
    return Image.asset('assets/gifs/summer-drink.gif');
    } else {
    return Image.asset('assets/gifs/cool-snow.gif');
    }
  }
}
