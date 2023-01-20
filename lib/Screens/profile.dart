import 'package:assigment/Screens/payment_sucessful.dart';
import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Uicolors.backgroundcolor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(
                      15,
                    ),
                    bottomRight: Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: const BoxDecoration(
                              // color: Colors.black,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/Image.png'),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          uitext.profilename,
                          style: const TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            uitext.emailp,
                            style: TextStyle(
                              color: Uicolors.blackcolor,
                              fontFamily: 'DMSans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.6),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.3584,
                              // height: doub,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                color: Uicolors.textcolor,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              uitext.order,
                                            ),
                                            Text(
                                              uitext.inprogress,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Uicolors.black26color,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[50],
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        'assets/smallspeaker.png'),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(uitext.beosound),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[50],
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                        'assets/speaker.png'),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(uitext.beosound),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[50],
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                      'assets/smallspeaker.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(uitext.beosound),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Divider(
                                          color: Uicolors.black26color,
                                          thickness: 1,
                                        ),
                                      ),
                                      Text(
                                        uitext.orderonits,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        uitext.orderwillarr,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Uicolors.black45color,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 27,
                                      ),
                                      //track container
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Payment_Sucessfull(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.048,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Uicolors.backgroundcolor,
                                          ),
                                          child: Center(
                                            child: Text(
                                              uitext.track,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 40, horizontal: 50),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                    //border color change
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Uicolors.black38color,
                                      ),
                                    ),
                                  ),
                                  child: ListTile(
                                    leading: const Icon(
                                      Icons.person,
                                    ),
                                    title: Text(uitext.myaccount),
                                    subtitle: Text(uitext.edityour),
                                    trailing: const Icon(Icons.forward),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
