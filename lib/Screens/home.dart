import 'package:assigment/Screens/first_itemscreen.dart';
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
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
        ),
        drawer: const Drawer(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      uitext.catagori,
                      style: const TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => First_item(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.transparent,
                            height: MediaQuery.of(context).size.height * 0.38,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: MediaQuery.of(context).size.height * 0.1,
                                  child: Image(
                                    image: AssetImage('assets/Base.png'),
                                  ),
                                ),
                                const Positioned(
                                  top: 160,
                                  left: 75,
                                  child: Center(
                                    child: Text(
                                      'Speakers',
                                      style: TextStyle(
                                          fontFamily: 'DMSans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 185,
                                  left: 65,
                                  child: Center(
                                    child: Text(
                                      uitext.products,
                                      style: TextStyle(
                                        fontFamily: 'DMSans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ),
                                ),
                                // ignore: avoid_unnecessary_containers
                                Container(
                                  child: const Image(
                                    image: AssetImage('assets/speaker.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: MediaQuery.of(context).size.height * 0.38,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Stack(
                            children: [
                              Positioned(
                                top: MediaQuery.of(context).size.height * 0.1,
                                child: Image(
                                  image: AssetImage('assets/Base.png'),
                                ),
                              ),
                              const Positioned(
                                top: 160,
                                left: 65,
                                child: Center(
                                  child: Text(
                                    'Headphone',
                                    style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 183,
                                left: 60,
                                child: Center(
                                  child: Text(
                                    '15 + Products',
                                    style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontSize: 12,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              // ignore: avoid_unnecessary_containers
                              Container(
                                child: const Image(
                                  image: AssetImage('assets/speaker.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Color(0xffF3F6F8),
                  ),
                ),
                Center(
                  child: Text(
                    uitext.foryou,
                    style: TextStyle(
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.38,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage('assets/Base 2.png'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Image.asset('assets/smallspeaker.png'),
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 15),
                                  child: Text(
                                    'BoeSound',
                                    style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.38,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage('assets/Base 2.png'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Image.asset('assets/bigspeaker.png'),
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 15),
                                  child: Text(
                                    'Boelit 17',
                                    style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.38,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage('assets/Base 2.png'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Image.asset('assets/smallspeaker.png'),
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 15),
                                  child: Text(
                                    'BoeSound',
                                    style: TextStyle(
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
