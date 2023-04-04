import 'package:flutter/material.dart';
import 'package:uts_/pages/menu.dart';
import 'package:uts_/pages/kalender.dart';
import 'package:uts_/pages/login.dart';
import 'package:uts_/pages/profile.dart';

import 'const/color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    BangunDatar(),
    Calendar(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calculate,
              ),
              label: 'Bangun Datar'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_view_month_rounded,
            ),
            label: 'Kalender',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Data Diri',
          ),
        ],
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        selectedItemColor: primary,
        unselectedItemColor: secondary,
        currentIndex: selectedIndex,
      ),
    );
  }
}
