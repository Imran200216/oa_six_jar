import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sixjar/screens/buttoncurvenavigation/NotesPage.dart';
import 'package:sixjar/screens/buttoncurvenavigation/historypage.dart';
import 'package:sixjar/screens/buttoncurvenavigation/homepage.dart';
import 'package:sixjar/screens/buttoncurvenavigation/profilepage.dart';

class CurvedNavigation extends StatefulWidget {
  const CurvedNavigation({Key? key}) : super(key: key);

  @override
  State<CurvedNavigation> createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
  int index = 0;

  final items = const [
    Icon(
      Icons.home,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.note_alt_sharp,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.history,
      size: 30,
      color: Colors.white,
    ),
    Icon(
      Icons.person,
      size: 30,
      color: Colors.white,
    ),
  ];
  final screen = const [
    HomePage(),
    NotesPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: screen[index],
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          color: Colors.green.shade400,
          buttonBackgroundColor: Colors.green.shade300,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
    );
  }
}
