  import 'package:ui_company_profile/about.dart';
  import 'package:ui_company_profile/home_page.dart';
  import 'package:ui_company_profile/profile.dart';
  import 'package:flutter/material.dart';

  class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
  }

  class _MainScreenState extends State<MainScreen> {
    int _pageIndex = 0;

    final List<Widget> _pages = [
      HomePage(), 
      AboutPage(),
      ProfilePage(),
      // Add other pages here
    ];

    void _onItemTapped(int index) {
      setState(() {
        _pageIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {    
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: _onItemTapped,
          items: [
            _buildBottomNavigationBarItem(icon: Icons.home, label: "Home"),
            _buildBottomNavigationBarItem(icon: Icons.dashboard, label: "About"),
            _buildBottomNavigationBarItem(icon: Icons.person, label: "Profile"),
            // Add other BottomNavigationBarItems as needed
          ],
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
        ),
        body: _pages[_pageIndex],
      );
    }

    BottomNavigationBarItem _buildBottomNavigationBarItem({
      required IconData icon,
      required String label,
    }) {
      return BottomNavigationBarItem(
        icon: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          child: Icon(
            icon,
            size: _pageIndex == _pages.indexOf(_pages.firstWhere((element) {
              return element is HomePage;
            })) ? 30 : 24,
          ),
        ),
        label: label,
      );
    }
  }
