class WeatherMother {
   static weather() {
    return {
      "location": {
        "name": "Madrid",
        "region": "Madrid",
        "country": "Spain",
        "lat": 40.4165,
        "lon": -3.7026,
        "tz_id": "Europe/Madrid",
        "localtime_epoch": 1678886400,
        "localtime": "2023-03-15 12:00"
      },
      "current": {
        "last_updated_epoch": 1678886400,
        "last_updated": "2023-03-15 12:00",
        "temp_c": 15.0,
        "temp_f": 59.0,
        "is_day": 1,
        "condition": {
          "text": "Sunny",
          "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png",
          "code": 1000
        },
        "wind_mph": 10.0,
        "wind_kph": 16.0,
        "wind_degree": 180,
        "wind_dir": "S",
        "pressure_mb": 1012.0,
        "pressure_in": 30.0,
        "precip_mm": 0.0,
        "precip_in": 0.0,
        "humidity": 60,
        "cloud": 0,
        "feelslike_c": 14.0,
        "feelslike_f": 57.2,
        "uv": 6.0
      }
    };
  }
}
