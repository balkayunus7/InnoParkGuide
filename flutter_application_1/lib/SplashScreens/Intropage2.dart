import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#809fff"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              "27 Ortaklı Innopark",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 300,
            alignment: Alignment.center,
            child: Lottie.network(
                "https://assets3.lottiefiles.com/packages/lf20_hadzves0.json",
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Text(
              "Mevlana Kalkınma Ajansı tarafından desteklenen, Konya Sanayi Odası liderliğinde uygulamaya konulan bir güdümlü proje ile kurulan “Konya Bölgesel İnovasyon Merkezi“, hizmetlerde etkinlik sağlama ve sürdürülebilirlik kaygılarıyla 2015 yılında Konya Teknoloji Geliştirme Bölgesine dönüştürülmüştür.",
              textAlign: TextAlign.center,
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
