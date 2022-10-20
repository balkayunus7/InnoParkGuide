import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage/MainPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'IntroPage1.dart';
import 'Intropage2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.78),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                    onTap: () {
                      _controller.previousPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.bounceInOut);
                    },
                    child: Text(
                      "Back",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),

                SmoothPageIndicator(
                    controller: _controller,
                    count: 2,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.white,
                      dotColor: Colors.white,
                    )),

                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return MainPage();
                            },
                          ));
                        },
                        child: Text(
                          "Explore",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                        ))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.bounceInOut);
                        },
                        child: Text(
                          "Next",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                        )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
