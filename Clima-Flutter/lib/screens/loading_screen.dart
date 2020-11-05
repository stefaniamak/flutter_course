import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '457013e9fe6cafe87324847211e894ca';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double longitude;
  double latitude;

  // Lifecycle
  @override
  void initState() {
    super.initState();

    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    longitude = location.longitude;
    latitude = location.latitude;

    NetworkHelper networkHelper = NetworkHelper(
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    String weatherData = await networkHelper.getData();

    // var weatherDescription = weatherData['weather'][0]['description'];
    // var cityName = weatherData['name'];
    //
    // print(weatherDescription);
    // print(cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
