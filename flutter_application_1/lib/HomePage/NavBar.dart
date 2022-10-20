import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.blue[100],
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.lightBlue,
                  Colors.blueGrey,
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
              icon: Icons.abc,
              text: "ANASAYFA",
              ontap: () => print("1"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: CustomListTile(
                icon: Icons.abc_sharp,
                text: "KABUL VE İZLEME OFİSİ",
                ontap: () => print("1"),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: CustomListTile(
              icon: Icons.abc,
              text: "TEKNOLOJİ TRANSFER OFİSİ",
              ontap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: CustomListTile(
              icon: Icons.abc,
              text: "HİZMETLERİMİZ",
              ontap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: CustomListTile(
              icon: Icons.abc,
              text: "HABERLER & DUYURULAR",
              ontap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: CustomListTile(
              icon: Icons.abc,
              text: "İLETİŞİM",
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
  });

  final IconData icon;
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      onTap: ontap,
    );
  }
}
