import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage/ImageTransition.dart';
import 'GuideCard.dart';
import 'NavBar.dart';
import 'package:hexcolor/hexcolor.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#e6f9ff"),
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text('InnoPark',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.black87)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ImageTransition(
              height: 280,
            ),
            SizedBox(height: 100),
            GuideCard(),
          ],
        ),
      ),
    );
  }
}
