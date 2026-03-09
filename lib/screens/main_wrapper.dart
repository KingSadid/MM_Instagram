import 'package:flutter/material.dart';
import 'package:instagram/utils/app_colors.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/search_screen.dart';
import 'package:instagram/screens/reels_screen.dart';
import 'package:instagram/screens/shop_screen.dart';
import 'package:instagram/screens/profile_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const ShopScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final iconColor = isDark ? AppColors.textDark : AppColors.textLight;

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: iconColor,
        unselectedItemColor: AppColors.textSecondary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 1 ? Icons.search : Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 2 ? Icons.smart_display : Icons.smart_display_outlined),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 3 ? Icons.shopping_bag : Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(_currentIndex == 4 ? Icons.person : Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
