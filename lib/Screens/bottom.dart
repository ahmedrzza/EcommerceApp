import 'package:assigment/Screens/cart.dart';
import 'package:assigment/Screens/home.dart';
import 'package:assigment/Screens/profile.dart';
import 'package:assigment/Screens/search.dart';
import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom_bar extends StatefulWidget {
  const Bottom_bar({super.key});

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {
  final Screen = [
   const Home_Screen(),
   const Search_Screen(),
   const Cart_Screen(),
   const Profile_Screen()
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
        tabBackgroundColor: Uicolors.backgroundcolor,
        iconSize: 25,
        onTabChange: ontap,
        padding: const EdgeInsets.all(10),
        tabs:  [
          GButton(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            icon: Icons.home_filled,
            text: uitext.home,
            gap: 20,
          ),
          GButton(
            icon: Icons.search,
            text: uitext.search,
            gap: 20,
          ),
          GButton(
            icon: Icons.shopping_bag,
            text: uitext.cart,
            gap: 20,
          ),
          GButton(
            icon: Icons.person,
            text: uitext.profile,
            gap: 20,
          ),
        ],
      ),
    );
  }
}
