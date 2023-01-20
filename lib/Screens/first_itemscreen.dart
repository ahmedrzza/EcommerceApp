import 'package:assigment/Screens/Filter_Screen.dart';
import 'package:assigment/tabbar/viewall.dart';
import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
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
        iconTheme: IconThemeData(color: Uicolors.blackcolor),
        title: Center(
          child: Text(
            uitext.speaker,
            style: TextStyle(
              color: Uicolors.blackcolor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
                  color: Uicolors.transparentcolor,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.12,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.height * 0.48,
                        color: Uicolors.transparentcolor,
                        child: const Image(
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
                          color: Uicolors.transparentcolor,
                          child: const Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/speaker.png'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.29,
                      left: MediaQuery.of(context).size.width * 0.27,
                      child: Text(
                        uitext.beosoundba,
                        style: const TextStyle(
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.32,
                      left: MediaQuery.of(context).size.height * 0.12,
                      child: Text(
                        uitext.innovation,
                        style: const TextStyle(
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
                indicatorColor: Uicolors.blackcolor,
                labelColor: Uicolors.blackcolor,
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                labelPadding: const EdgeInsets.all(15),
                isScrollable: true,
                tabs: [
                  Text(
                    uitext.viewall,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    uitext.portable,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    uitext.multiroom,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    uitext.architecture,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.357,
              width: double.infinity,
              child: TabBarView(
                controller: tabController,
                children: const [
                  ViewAll(),
                  Portable(),
                  Multiroom(),
                  Archirecture()
                ],
              ),
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
              return const Bottom_Sheet();
            },
          );
        },
        backgroundColor: Uicolors.backgroundcolor,
        child: Icon(
          Icons.card_travel,
          color: Uicolors.blackcolor,
        ),
      ),
    );
  }
}
