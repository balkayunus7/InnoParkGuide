import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#809fff"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Konya Teknoloji Geliştirme Bölgesi’nin Vizyonu",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 300,
            alignment: Alignment.center,
            child: Lottie.network(
                "https://assets3.lottiefiles.com/packages/lf20_vvtkfqbo.json",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              textAlign: TextAlign.center,
              "Bölgenin İnnovasyon Parkı olan Konya Teknoloji Geliştirme Bölgesi’nin vizyonu; bulunduğu bölgenin ekonomisinin inovasyona dayalı büyümesinde önemli rolü olan, uluslararası üne sahip, teknolojik üretim öncelikli bir teknopark olmaktır.",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            height: 200,
          )
        ],
      ),
    );
  }
}
