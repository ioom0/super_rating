import 'package:flutter/material.dart';
import 'package:super_rating/super_rating.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rating Summary Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Rating Example'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SuperRating(
          counter: 13,
          average: 3.5,
          counterFiveStars: 5,
          counterFourStars: 5,
          counterThreeStars: 2,
          counterTwoStars: 1,
          counterOneStars: 1,
          showReviewBars: true,
          showAverage: true,
          showTextAverage: false,
          directionality: TextDirection.rtl,
        ),
      ),
    );
  }
}
