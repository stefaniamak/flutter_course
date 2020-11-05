import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    longitude = location.longitude;
    latitude = location.latitude;

    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'); // This was kinda copy pasted, didn't manage to find the correct String from the site.

    if (response.statusCode == 200) {
      String data = response.body;
      var weatherDescription = jsonDecode(data)['weather'][0]['description'];
      var cityName = jsonDecode(data)['name'];

      print(weatherDescription);
      print(cityName);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
