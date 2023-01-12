import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.menu),
          elevation: 0,
          iconTheme:const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
        ),
        drawer:const Drawer(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    uitext.catagori,
                    style:const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                             const Image(
                                image: AssetImage('assets/Base.png'),
                              ),
                            const  Positioned(
                                top: 160,
                                left: 75,
                                child: Center(
                                  child: Text('Speakers'),
                                ),
                              ),
                              Positioned(
                                top: 180,
                                left: 60,
                                child: Center(
                                  child: Text(uitext.products),
                                ),
                              )
                            ],
                          ),
                          // ignore: avoid_unnecessary_containers
                          Container(
                            child:const Image(
                              image: AssetImage('assets/speaker.png'),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                         const Image(
                            image: AssetImage('assets/Base.png'),
                          ),
                          // ignore: avoid_unnecessary_containers
                          Container(
                            child:const Image(
                              image: AssetImage('assets/speaker.png'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Container(
                  color:const Color.fromARGB(255, 111, 119, 122),
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
              Center(
                child: Text(uitext.foryou),
              )
            ],
          ),
        ));
  }
}
