import 'package:assigment/Screens/bottom.dart';
import 'package:assigment/untils/text.dart';
import 'package:assigment/untils/widget.dart';
import 'package:flutter/material.dart';

import '../untils/color.dart';

class Single_product_Screen extends StatelessWidget {
  const Single_product_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Uicolors.containercolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Uicolors.transparentcolor,
        iconTheme: IconThemeData(
          color: Uicolors.blackcolor,
        ),
        foregroundColor: Uicolors.blackcolor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag,
              color: Uicolors.blackcolor,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  uitext.speaker,
                  style: TextStyle(
                    fontSize: 14,
                    color: Uicolors.blackcolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  uitext.beosound,
                  style: TextStyle(
                    fontSize: 20,
                    color: Uicolors.blackcolor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  uitext.bal,
                  style: TextStyle(
                    fontSize: 20,
                    color: Uicolors.blackcolor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Text(
                  uitext.from,
                  style: TextStyle(
                    fontSize: 12,
                    color: Uicolors.blackcolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  uitext.perpec,
                  style: TextStyle(
                    fontSize: 15,
                    color: Uicolors.blackcolor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  uitext.available,
                  style: TextStyle(
                    fontSize: 12,
                    color: Uicolors.blackcolor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 80, left: 20),
                child: Row(
                  children: [
                    Single_productContainer(
                      context,
                      Uicolors.backgroundcolor,
                      Icon(
                        Icons.done,
                        size: 18,
                        color: Uicolors.blackcolor,
                      ),
                    ),
                  const  SizedBox(
                      width: 10,
                    ),
                    Single_productContainernochild(
                      context,
                      Uicolors.containercolor2,
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                    Single_productContainernochild(
                      context,
                      Uicolors.blackcolor,
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.466,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Uicolors.textcolor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 80,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        uitext.wireless,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(uitext.awireless),
                      Text(uitext.performance),
                      Text(uitext.against),
                      Text(uitext.homeim),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 90,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bottom_bar(),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.082,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Uicolors.backgroundcolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                uitext.addto,
                                style: TextStyle(
                                  color: Uicolors.textcolor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.5,
            top: MediaQuery.of(context).size.height * 0.04,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: 200,
              // color: Colors.amber,
              child: Image.asset(
                'assets/speaker.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
