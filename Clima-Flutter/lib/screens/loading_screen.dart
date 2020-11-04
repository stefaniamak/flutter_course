import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // Lifecycle
  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    print(location.longitude);
    print(location.latitude);
  }

  void getData() async {
    Response response = await get(
        'http://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid={API 457013e9fe6cafe87324847211e894ca}'); // This was kinda copy pasted, didn't manage to find the correct String from the site.

    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
