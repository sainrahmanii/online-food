import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_food/ui/account_page.dart';
import 'package:online_food/ui/favorite_page.dart';
import 'package:online_food/ui/home.dart';
import 'package:online_food/ui/notification_page.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({
    super.key,
  });

  @override
  State<CustomButtomNavigationBar> createState() =>
      _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    NotificationPage(),
    FavoritePage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xFFF6F7FB),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNavItem(0, 'assets/icons/home.svg', 'Home'),
                  _buildNavItem(
                    1,
                    'assets/icons/notification.svg',
                    'Notification',
                  ),
                  _buildNavItem(2, 'assets/icons/heart.svg', 'Favorite'),
                  _buildNavItem(3, 'assets/icons/account.svg', 'Account'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(),
    );
  }

  Widget _buildNavItem(int index, String iconPath, String text) {
    bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        // width: isActive ? 99 : 40,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isActive ? Color(0xFF11AC6A) : Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              color: isActive ? Colors.white : Color(0xFFBABABA),
            ),
            if (text.isNotEmpty) ...[
              SizedBox(width: 8),
              Text(
                isActive ? text : '',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: isActive ? Colors.white : Colors.black,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
