import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final padding = _PaddingUtility();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: HexColor("#e6f9ff"),
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <HexColor>[
                  HexColor("#ccf2ff"),
                  HexColor("#99e6ff"),
                ]),
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      "https://innopark.com.tr/wp-content/uploads/thegem-logos/logo_67d87dbd6d87895a5731bec74519bd21_1x.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 5),
            child: CustomListTile(
              icon: FontAwesomeIcons.clipboard,
              text: "ANASAYFA",
              color: Colors.blue,
              ontap: () => print("1"),
            ),
          ),
          Padding(
              padding: padding.listtilePadding,
              child: CustomListTile(
                icon: FontAwesomeIcons.chair,
                color: Colors.black,
                text: "KABUL VE İZLEME OFİSİ",
                ontap: () => print("1"),
              )),
          Padding(
            padding: padding.listtilePadding,
            child: CustomListTile(
              icon: FontAwesomeIcons.briefcase,
              color: Colors.black,
              text: "TEKNOLOJİ TRANSFER OFİSİ",
              ontap: () => print("1"),
            ),
          ),
          Padding(
            padding: padding.listtilePadding,
            child: CustomListTile(
              icon: FontAwesomeIcons.skullCrossbones,
              color: Colors.black,
              text: "HİZMETLERİMİZ",
              ontap: () => print("1"),
            ),
          ),
          Padding(
            padding: padding.listtilePadding,
            child: CustomListTile(
              icon: FontAwesomeIcons.newspaper,
              color: Colors.black,
              text: "HABERLER & DUYURULAR",
              ontap: () => print("1"),
            ),
          ),
          Padding(
            padding: padding.listtilePadding,
            child: CustomListTile(
              icon: FontAwesomeIcons.personWalkingWithCane,
              text: "İLETİŞİM",
              color: Colors.black,
              ontap: () => print("1"),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.text,
    required this.ontap,
    required this.color,
  });

  final IconData icon;
  final String text;
  final VoidCallback ontap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: color, fontWeight: FontWeight.w500),
      ),
      onTap: ontap,
    );
  }
}

class _PaddingUtility {
  final EdgeInsets listtilePadding =
      const EdgeInsets.only(top: 5, bottom: 5, left: 5);
}
