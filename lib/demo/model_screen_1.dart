import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:demo_project_2/demo/work_API.dart';
import 'package:flutter/material.dart';

Future<Train> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://api.weatherapi.com/v1/current.json?key=89a9c4b83a8c468f969113903242111&q=location'));

  if (response.statusCode == 200) {

    return Train.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {

    throw Exception('Failed to load album');
  }
}

class Home_Screen_2 extends StatefulWidget {
  const Home_Screen_2({super.key});

  @override
  State<Home_Screen_2> createState() => _Home_Screen_2State();
}

class _Home_Screen_2State extends State<Home_Screen_2> {
  late Future<Train> futureAlbum;

  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Train>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Text(snapshot.data!.location!.name.toString()),
                  Text(snapshot.data!.location!.region.toString()),
                  Text(snapshot.data!.location!.country.toString()),
                  Text(snapshot.data!.location!.lat?.toDouble() as String),
                  Text(snapshot.data!.location!.lon?.toDouble() as String),
                  Text(snapshot.data!.location!.tzId.toString()),
                  Text(snapshot.data!.location!.localtimeEpoch!.toInt().toString()),
                  Text(snapshot.data!.location!.localtime.toString()),
                  Text(snapshot.data!.current!.lastUpdatedEpoch!.toInt().toString(),
                  ),],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

