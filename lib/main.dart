import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            // Load a Lottie file from your assets
            Lottie.asset('assets/LottieLogo1.json'),

            // Load a Lottie file from a remote url
            Lottie.network(
                'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

            // Load an animation and its images from a zip file
            Lottie.asset('assets/lottiefiles/angel.zip',
              delegates: LottieDelegates(values: [
                ValueDelegate.blurRadius(['**'],

                  value: 20,
                ),
              ]),),
            Lottie.asset(
              'assets/AndroidWave.json',
              height: 500,
              delegates: LottieDelegates(values: [
                ValueDelegate.blurRadius(['**'],

                  value: 20,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
