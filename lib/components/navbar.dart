import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:salsabil/pages/home/abou.dart';
import 'package:salsabil/pages/home/description.dart';
import 'package:salsabil/pages/home/home_page.dart';
import 'package:salsabil/pages/home/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomePage(),
      const ProfilePage(),
      const AboutPage(),
      const DescriptionPage(),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (currentIndex != 0) {
          setState(() {
            currentIndex = 0;
          });
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 600),
          backgroundColor: const Color(0xffD4A268),
          buttonBackgroundColor: const Color(0xffEE8143),
          color: const Color(0xffEDC494),
          height: 50,
          index: currentIndex,
          items: const [
            CurvedNavigationBarItem(
              child: Icon(Icons.home_outlined),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.person_2_outlined),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.map_outlined),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.houseboat_sharp),
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: screens[currentIndex],
      ),
    );
  }
}
