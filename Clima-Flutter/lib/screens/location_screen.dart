import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/services/weather.dart';

class LocationScreen extends StatefulWidget {
  final locationWeather;

  LocationScreen(this.locationWeather);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temperature;
  String description;
  String cityName;
  String suggestion;
  String descriptionDown;

  @override
  void initState() {
    super.initState();

    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        description = 'Unable to get weather data.';
        cityName = '';
        descriptionDown = '';
        return;
      }
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      description = weatherData['weather'][0]['description'];
      cityName = weatherData['name'];
      suggestion = WeatherModel().getMessage(temperature);
      descriptionDown = "$suggestion in $cityName!";

      print(description);
      print(cityName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      var weatherData =
                          await WeatherModel().getLocationWeather();
                      updateUI(weatherData);
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: <Widget>[
                        Text(
                          '$temperature°',
                          style: kTempTextStyle,
                        ),
                        Text(
                          WeatherModel().getWeatherIcon(temperature),
                          style: kConditionTextStyle,
                        ),
                      ],
                    ),
                    Text(
                      description,
                      style: kDescriptionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  descriptionDown,
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
