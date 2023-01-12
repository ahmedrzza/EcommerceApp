import 'package:assigment/Screens/cart.dart';
import 'package:assigment/Screens/home.dart';
import 'package:assigment/Screens/profile.dart';
import 'package:assigment/Screens/search.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom_bar extends StatefulWidget {
  const Bottom_bar({super.key});

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {
  final Screen = [
    Home_Screen(),
    Search_Screen(),
    Cart_Screen(),
    Profile_Screen()
  ];
  int currentindex = 0;
  ontap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentindex],
      bottomNavigationBar: GNav(
        tabBackgroundColor: const Color(0xffC6AB59),
        iconSize: 25,
        onTabChange: ontap,
        padding: const EdgeInsets.all(10),
        tabs: const [
          GButton(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            icon: Icons.home_filled,
            text: 'Home',
            gap: 20,
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
            gap: 20,
          ),
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
            gap: 20,
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
            gap: 20,
          ),
        ],
      ),
    );
  }
}
