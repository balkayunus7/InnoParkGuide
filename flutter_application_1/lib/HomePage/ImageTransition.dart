import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/HomepageBanner.dart';

class ImageTransition extends StatelessWidget {
  const ImageTransition({
    super.key,
    required this.height,
  });

  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: PageView.builder(
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
    );
  }
}
