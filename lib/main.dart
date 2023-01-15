import 'package:assigment/Screens/firstscreen.dart';
import 'package:assigment/Screens/order_failed.dart';
import 'package:assigment/Screens/order_review.dart';
import 'package:assigment/Screens/payment_sucessful.dart';
import 'package:assigment/tabbar/viewall.dart';
import 'package:flutter/material.dart';

import 'Screens/first_itemscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const First_Screen());
  }
}
