import 'package:assigment/Screens/Filter_Screen.dart';
import 'package:assigment/Screens/cart.dart';
import 'package:assigment/tabbar/viewall.dart';
import 'package:assigment/untils/widget.dart';
import 'package:flutter/material.dart';

class First_item extends StatefulWidget {
  const First_item({super.key});

  @override
  State<First_item> createState() => _First_itemState();
}

class _First_itemState extends State<First_item>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
          child: Text(
            'SPEAKERS',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.settings,
              size: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: MediaQuery.of(context).size.height * 0.48,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.12,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.height * 0.48,
                        color: Colors.transparent,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/bigbase.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 120),
                      child: Center(
                        child: Container(
                          height: 220,
                          width: 120,
                          color: Colors.transparent,
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/speaker.png'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 80,
                      child: Text(
                        'Beosound Balance',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 250,
                      left: 72,
                      child: Text(
                        'Innovation,wireless home speaker',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                padding: EdgeInsets.only(top: 10, bottom: 15),
                // indicatorPadding: EdgeInsets.all(50),
                labelPadding: EdgeInsets.all(15),
                isScrollable: true,
                tabs: [
                  Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Portable',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Multiroom',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Architecture',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.357,
              width: double.infinity,
              child: TabBarView(controller: tabController, children: [
                ViewAll(),
                Portable(),
                Multiroom(),
                Archirecture()
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //bottom sheet
          showModalBottomSheet(
              isScrollControlled: false,
              context: context,
              builder: (context) {
                return Bottom_Sheet();
              });
        },
        backgroundColor: Color(0xffC6AB59),
        child: Icon(
          Icons.card_travel,
          color: Colors.black,
        ),
      ),
    );
  }
}
