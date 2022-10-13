import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage/GuideCard.dart';
import 'package:flutter_application_1/HomePage/ImageTransition.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InnoPark',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageTransition(
              height: 240,
            ),
            SizedBox(height: 100),
            GuideCard(),
          ],
        ),
      ),
    );
    ;
  }
}
