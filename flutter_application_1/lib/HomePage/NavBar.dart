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
      width: 200,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 5, left: 13),
            child: ListTile(
              title: Text(
                "INNOPARK",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white),
              ),
              onTap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 5),
            child: ListTile(
              leading: const Icon(Icons.abc_rounded),
              title: const Text("ANASAYFA"),
              onTap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: ListTile(
              leading: const Icon(Icons.abc_rounded),
              title: const Text("KURUMSAL"),
              onTap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: ListTile(
              leading: const Icon(Icons.abc_rounded),
              title: const Text("KABUL VE İZLEME OFİSİ"),
              onTap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: ListTile(
              leading: const Icon(Icons.abc_rounded),
              title: const Text("TEKNOLOJİ TRANSFER OFİSİ"),
              onTap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: ListTile(
              leading: const Icon(Icons.abc_rounded),
              title: const Text("HİZMETLERİMİZ"),
              onTap: () => print("1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: ListTile(
              leading: const Icon(Icons.abc_rounded),
              title: const Text("İLETİŞİM"),
              onTap: () => print("1"),
            ),
          ),
        ],
      ),
    );
  }
}
