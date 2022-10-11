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
              color: Colors.black,
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
                      "textCardTitle",
                      style: titleTheme(context),
                    ),
                  ),

                  ///  Subtitle eklnmesi ve teması //
                  Text(
                    "textCardSubt",
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
    return ElevatedButton.styleFrom(backgroundColor: Colors.white);
  }

//  Text Temaları //
  TextStyle? titleTheme(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Colors.black);
  }

  TextStyle? subtitleTheme(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: Colors.black);
  }

  // Card dekorasyonu ve radiusu  //
  BoxDecoration cardBoxDecoration() {
    return BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(10));
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
  


/*
class AnimationCardWidget extends StatelessWidget
    with _PaddingUtility, _ContSizes {
  AnimationCardWidget({
    super.key,
  });
  //  Classlara Ulaşmak için nesne //
  ColorUtility colors = ColorUtility();
  BorderUtilty borders = BorderUtilty();
  //  Dışarıdan atanacak değerler (çağrıldğı yerde) //
  final String textCardTitle;
  final String textCardSubt;
  final String textIconCard;
  final String urlLottie;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cardBoxDecoration(),
      child: Padding(
        padding: contOuterPadding,
        child: Row(
          //  Lottie animasyonu ve text eklenmesi için Row //
          children: [
            // Lottie Animasyonu
            Container(
              height: height,
              width: width,
              child: Lottie.network(urlLottie),
            ),
            const SizedBox(width: 20),
            //    Texts Column içine  //
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title eklnmesi ve teması //
                  Padding(
                    padding: textPadding2,
                    child: Text(
                      textCardTitle,
                      style: titleTheme(context),
                    ),
                  ),

                  ///  Subtitle eklnmesi ve teması //
                  Text(
                    textCardSubt,
                    style: subtitleTheme(context),
                  ),
                  //   Elevated button ve teması  //
                  Padding(
                    padding: buttonpadding,
                    child: ElevatedButton(
                      style: buttonStyle(),
                      onPressed: () {},
                      child: Text(textIconCard),
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
    return ElevatedButton.styleFrom(backgroundColor: colors.colorCardButton);
  }

//  Text Temaları //
  TextStyle? titleTheme(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(color: textColor);
  }

  TextStyle? subtitleTheme(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor);
  }

  // Card dekorasyonu ve radiusu  //
  BoxDecoration cardBoxDecoration() {
    return BoxDecoration(
        color: colors.colorAnimCardBack, borderRadius: borders.animCardRadius);
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
*/