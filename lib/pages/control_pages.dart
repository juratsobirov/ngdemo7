import 'package:flutter/material.dart';
import 'package:ngdemo7_again/pages/favorite_page.dart';
import 'package:ngdemo7_again/pages/home_page.dart';
import 'package:ngdemo7_again/pages/profil_page.dart';
import 'package:ngdemo7_again/pages/save_page.dart';
import 'package:easy_localization/easy_localization.dart';

class ControlPages extends StatefulWidget {
  const ControlPages({super.key});

  @override
  State<ControlPages> createState() => _ControlPagesState();
}

class _ControlPagesState extends State<ControlPages> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    FavoritePage(),
    SavePage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home".tr()),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favorite".tr()),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "save".tr()),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile".tr()),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
