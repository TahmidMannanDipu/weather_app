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

            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [

            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10, sigmaY: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        spacing: 8,
                        children: [
                          Text("300° F",style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Icon(
                            Icons.cloud,
                            size: 72,
                          ),
                          Text("Rain",style: TextStyle(
                            fontSize: 24,
                          ),),
                        ],
                      ),
                    ),
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