import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage/ImageTransition.dart';
import 'package:flutter_application_1/Products/HomepageBanner.dart';
import 'GuideCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

var _selectedIndex = 0;

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
              height: 280,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  homePageBannerList.length,
                  (index) => Indicator(
                      isActive: _selectedIndex == index ? true : false),
                ),
              ],
            ),
            const SizedBox(height: 100),
            const GuideCard(),
          ],
        ),
      ),
    );
  }
}
