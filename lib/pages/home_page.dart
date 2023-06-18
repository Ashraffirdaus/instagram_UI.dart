import 'package:flutter/material.dart';
import 'package:instagram_ui/Tabs/account_screen.dart';
import 'package:instagram_ui/Tabs/home_screen.dart';
import 'package:instagram_ui/Tabs/reels_screen.dart';
import 'package:instagram_ui/Tabs/search_screen.dart';
import 'package:instagram_ui/Tabs/shop_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Navigate around the bottom nav bar
  int _currentIndex = 0;

  void navigationBarIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List  _children =  [
     UserHome(),
    const UserSearch(),
     const UserReels(),
      const UserShop(),
       const UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: navigationBarIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
