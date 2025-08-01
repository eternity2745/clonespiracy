import 'package:clonespiracy/Screens/landing.dart';
import 'package:clonespiracy/Screens/matches.dart';
import 'package:clonespiracy/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
            icon: Icons.home
            ),
          GButton(
            icon: Icons.compare
            ),
          GButton(
            icon: Icons.person
            )
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          _pageController.jumpToPage(index);
            setState(() {
            _selectedIndex = index;
          });
        },
        ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          LandingScreen(), MatchesScreen(), ProfileScreen()
        ],
      ),
    );
  }
}