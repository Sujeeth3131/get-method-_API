import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherScreen_1(),
    );
  }
}

class WeatherScreen_1 extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen_1> {
  String weather = '';
  bool loading = false;
  String errorMessage = '';

  void fetchWeather() async {
    setState(() {
      loading = true;
      errorMessage = '';
    });

    try {
      final response = await http.get(Uri.parse(
          'https://api.weatherapi.com/v1/current.json?key=&q=London')); // Replace `London` with desired location.

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          weather =
          "Temperature: ${data['current']['temp_c']}°C, Condition: ${data['current']['condition']['text']}";
          loading = false;
        });
      } else {
        setState(() {
          loading = false;
          errorMessage = 'Error: Unable to fetch weather data (${response.statusCode})';
        });
      }
    } catch (e) {
      setState(() {
        loading = false;
        errorMessage = 'Failed to load weather data: $e';
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
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            if (weather.isNotEmpty)
              Text(
                "Weather: $weather",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            SizedBox(height: 20),
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
