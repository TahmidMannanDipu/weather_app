import 'package:flutter/material.dart';


class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              print("Refresh");
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),

      body: Column(
        children: [
          // main card
          Placeholder(
            fallbackHeight: 250,
          ),
    const SizedBox(
      height: 16,
    ),
          // weather forecast
          Placeholder(
            fallbackHeight: 150,
          ),
          const SizedBox(
            height: 16,
          ),
          // additional info
          Placeholder(
            fallbackHeight: 150,
          ),
        ],
      ),

    );
  }
}
