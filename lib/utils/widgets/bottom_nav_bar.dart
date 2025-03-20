import 'package:api_practice/screens/alerts.dart';
import 'package:api_practice/screens/home_screen.dart';
import 'package:api_practice/screens/message.dart';
import 'package:api_practice/screens/profile.dart';
import 'package:api_practice/screens/search.dart';
import 'package:api_practice/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Home(),
    const Alerts(),
    const Search(),
    const Message(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      color: AppColors.blackColor,
      child: SafeArea(
        bottom: false,
        child: Theme(
          data: Theme.of(context).copyWith(canvasColor: AppColors.whiteColor),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.blackColor,
            backgroundColor: AppColors.whiteColor,
            type: BottomNavigationBarType.fixed,
            items: [
              _buildNavItem(
                icon: Icons.home,
                activeIcon: Icons.home_filled,
                label: "home".tr,
              ),
              _buildNavItem(
                icon: Icons.notifications_none,
                activeIcon: Icons.notifications,
                label: "alerts".tr,
              ),
              _buildNavItem(
                icon: Icons.search,
                activeIcon: Icons.search_rounded,
                label: "search".tr,
              ),
              _buildNavItem(
                icon: Icons.message_outlined,
                activeIcon: Icons.message,
                label: "messages".tr,
              ),
              _buildNavItem(
                icon: Icons.account_circle_outlined,
                activeIcon: Icons.account_circle,
                label: "profile".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required IconData icon,
    required IconData activeIcon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 24,
        color: AppColors.primaryColor,  // Custom color
      ),
      activeIcon: Icon(
        activeIcon,
        size: 24,
        color: AppColors.primaryColor,  // Custom color
      ),
      label: label,
    );
  }
}
