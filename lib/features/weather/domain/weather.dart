import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  final Location location;
  final CurrentWeather current;

  Weather({required this.location, required this.current});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class Location {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  @JsonKey(name: 'tz_id')
  final String tzId;
  @JsonKey(name: 'localtime_epoch')
  final int localtimeEpoch;
  final String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtimeEpoch,
    required this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class CurrentWeather {
  @JsonKey(name: 'last_updated_epoch')
  final int lastUpdatedEpoch;
  @JsonKey(name: 'last_updated')
  final String lastUpdated;
  @JsonKey(name: 'temp_c')
  final double tempC;
  @JsonKey(name: 'temp_f')
  final double tempF;
  @JsonKey(name: 'is_day')
  final int isDay;
  final Condition condition;
  @JsonKey(name: 'wind_mph')
  final double windMph;
  @JsonKey(name: 'wind_kph')
  final double windKph;
  @JsonKey(name: 'wind_degree')
  final int windDegree;
  @JsonKey(name: 'wind_dir')
  final String windDir;
  @JsonKey(name: 'pressure_mb')
  final double pressureMb;
  @JsonKey(name: 'pressure_in')
  final double pressureIn;
  @JsonKey(name: 'precip_mm')
  final double precipMm;
  @JsonKey(name: 'precip_in')
  final double precipIn;
  final int humidity;
  final int cloud;
  @JsonKey(name: 'feelslike_c')
  final double feelslikeC;
  @JsonKey(name: 'feelslike_f')
  final double feelslikeF;
  final double uv;

  CurrentWeather({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.uv,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}

@JsonSerializable()
class Condition {
  final String text;
  final String icon;
  final int code;

  Condition({required this.text, required this.icon, required this.code});

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}
