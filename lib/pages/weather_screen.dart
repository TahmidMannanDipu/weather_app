import 'dart:ui';

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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 16,
                    children: [
                      Text("300 F",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      const Icon(Icons.cloud,size: 80,),
                      Text("Rain", style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
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
      ),

    );
  }
}
