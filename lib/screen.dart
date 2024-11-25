import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherscreenState createState() => _WeatherscreenState();
}




class _WeatherscreenState extends State<WeatherScreen> {
  String weather = '';
  bool loading = false;
  String errorMessage = '';

  void fetchWeather() async {
    setState(() {
      loading = true;
      errorMessage = '';
    });

    try {
      final response = await
      http.get(Uri.parse('https://api.weatherapi.com/v1/current.json?key=&q=location'));
      final data = jsonDecode(response.body);
      setState(() {

        loading = false;
      });
    } catch (e) {
      setState(() {
        loading = false;
        errorMessage = 'Failed to load weather data';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchWeather();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (loading) CircularProgressIndicator(),
            if (errorMessage.isNotEmpty) Text(errorMessage, style: TextStyle(color: Colors.red)),
            if (weather.isNotEmpty) Text("Weather: $weather"),
            ElevatedButton(
              onPressed: fetchWeather,
              child: Text("Reload"),
            ),
          ],
        ),
      ),
    );
  }
}
