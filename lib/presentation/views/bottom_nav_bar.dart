import 'package:apiessai/presentation/views/all_bottom_nav_bar_screens/cart_screen/cart_screen.dart';
import 'package:apiessai/presentation/views/all_bottom_nav_bar_screens/favorite_screen/favorite_screen.dart';
import 'package:apiessai/presentation/views/all_bottom_nav_bar_screens/home_screen/home_screen.dart';
import 'package:apiessai/presentation/views/all_bottom_nav_bar_screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../../themes/app_themes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: AppTheme.black,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
          rippleColor: Colors.grey.shade300,
          hoverColor: Colors.grey.shade700,
          haptic: true, // haptic feedback
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          tabShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
          ], // tab button shadow
          curve: Curves.easeOutExpo, // tab animation curves
          duration: const Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: AppTheme.white, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: AppTheme.primaryColor, // selected tab background color
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Favorites',
            ),
            GButton(
              icon: LineIcons.shoppingCart,
              text: 'Cart',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
