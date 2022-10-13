import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/HomepageBanner.dart';

class ImageTransition extends StatelessWidget {
  ImageTransition({
    super.key,
    required this.height,
  });

  final double height;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          height: height,
          child: PageView.builder(
            controller: _pageController,
            itemCount: homePageBannerList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(homePageBannerList[index].thumbnailUrl),
                  fit: BoxFit.fill,
                )),
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
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
