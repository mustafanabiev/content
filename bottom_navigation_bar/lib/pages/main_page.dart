import 'package:bottom_navigation_bar/pages/favorite_page.dart';
import 'package:bottom_navigation_bar/pages/home_page.dart';
import 'package:bottom_navigation_bar/pages/profile_page.dart';
import 'package:bottom_navigation_bar/pages/search_page.dart';
import 'package:bottom_navigation_bar/pages/settings_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  List items = const [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    SettingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.red,
          onTap: (value) => setState(() {
            index = value;
          }),
          color: Colors.red,
          items: const [
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.settings, size: 30),
            Icon(Icons.person, size: 30),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
