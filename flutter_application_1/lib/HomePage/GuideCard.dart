import 'package:flutter/material.dart';

class GuideCard extends StatefulWidget {
  const GuideCard({super.key});

  @override
  State<GuideCard> createState() => _GuideCardState();
}

class _GuideCardState extends State<GuideCard> {
  _ContSizes contSizes = _ContSizes();
  _PaddingUtility paddingUtility = _PaddingUtility();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cardBoxDecoration(),
      child: Padding(
        padding: paddingUtility.contOuterPadding,
        child: Row(
          //  Lottie animasyonu ve text eklenmesi için Row //
          children: [
            // Lottie Animasyonu
            Container(
              height: contSizes.height,
              width: contSizes.width,
            ),
            const SizedBox(width: 20),
            //    Texts Column içine  //
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title eklnmesi ve teması //
                  Padding(
                    padding: paddingUtility.textPadding2,
                    child: Text(
                      "TextCardTitle",
                      style: titleTheme(context),
                    ),
                  ),

                  ///  Subtitle eklnmesi ve teması //
                  Text(
                    "TextCardSubt",
                    style: subtitleTheme(context),
                  ),
                  //   Elevated button ve teması  //
                  Padding(
                    padding: paddingUtility.buttonpadding,
                    child: ElevatedButton(
                      style: buttonStyle(),
                      onPressed: () {},
                      child: const Text("textIconCard"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//  Elevated buton styleı  //
  ButtonStyle buttonStyle() {
    return ElevatedButton.styleFrom(backgroundColor: Colors.black);
  }

//  Text Temaları //
  TextStyle? titleTheme(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.pink);
  }

  TextStyle? subtitleTheme(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.pink);
  }

  // Card dekorasyonu ve radiusu  //
  BoxDecoration cardBoxDecoration() {
    return BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10));
  }
}

// Dosyaya özel classlar  //
class _PaddingUtility {
  final EdgeInsets contOuterPadding = const EdgeInsets.all(30.0);
  final EdgeInsets textPadding2 = const EdgeInsets.only(bottom: 5);
  final EdgeInsets buttonpadding = const EdgeInsets.only(left: 40, top: 10);
}

class _ContSizes {
  final double height = 100;
  final double width = 100;
}
