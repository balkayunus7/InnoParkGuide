import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/HomepageBanner.dart';

class ImageTransition extends StatefulWidget {
  const ImageTransition({
    super.key,
    required this.height,
  });

  final double height;

  @override
  State<ImageTransition> createState() => _ImageTransitionState();
}

class _ImageTransitionState extends State<ImageTransition> {
  final PageController _pageController = PageController();
  var _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              height: widget.height,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    _selectedindex = value;
                  });
                },
                controller: _pageController,
                itemCount: homePageBannerList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image:
                          NetworkImage(homePageBannerList[index].thumbnailUrl),
                      fit: BoxFit.fill,
                    )),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Container(
                                    width: 250,
                                    child: Text(
                                      homePageBannerList[index].title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                              color: Colors.white70,
                                              fontSize: 23),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Container(
                                    width: 270,
                                    child: Text(
                                      homePageBannerList[index].subtitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                              color: Colors.white70,
                                              fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 120,
              right: 3,
              child: IconButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: _DurationUtility._durationLow,
                      curve: Curves.decelerate);
                },
                icon: const Icon(Icons.arrow_forward_ios_outlined,
                    size: 40, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 120,
              right: 350,
              child: IconButton(
                onPressed: () {
                  _pageController.previousPage(
                      duration: _DurationUtility._durationLow,
                      curve: Curves.decelerate);
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined,
                    size: 40, color: Colors.white),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              homePageBannerList.length,
              (index) =>
                  Indicator(isActive: _selectedindex == index ? true : false),
            ),
          ],
        ),
      ],
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}

class Indicator extends StatelessWidget {
  const Indicator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      margin: const EdgeInsets.all(2),
      width: isActive ? 22.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(8.0)),
    );
  }
}
