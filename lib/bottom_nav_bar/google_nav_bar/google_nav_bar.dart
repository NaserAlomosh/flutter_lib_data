import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../view/account.dart';
import '../../view/home.dart';
import '../../view/search.dart';
import '../../view/shopping_cart.dart';

// google_nav_bar: ^5.0.6
class CustomGoogleNavBar extends StatefulWidget {
  const CustomGoogleNavBar({super.key});

  @override
  State<CustomGoogleNavBar> createState() => _CustomGoogleNavBarState();
}

class _CustomGoogleNavBarState extends State<CustomGoogleNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const [
          HomeView(),
          AccountView(),
          SearchView(),
          ShoppingCart(),
        ][selectedIndex],
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: GNav(
                backgroundColor: const Color.fromARGB(255, 208, 208, 208),
                rippleColor: const Color.fromARGB(255, 255, 255, 255),
                hoverColor: const Color.fromARGB(255, 222, 222, 222),
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: const Color(0xFF6D9886),
                color: const Color.fromARGB(255, 56, 56, 56),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
