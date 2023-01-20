import 'package:assigment/Screens/bottom.dart';
import 'package:assigment/Screens/signupScreen.dart';
import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';

import '../untils/widget.dart';

class Signin_Screen extends StatelessWidget {
  const Signin_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 10),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.pin_drop_outlined,
                        size: 30,
                      ),
                    ),
                    Text(uitext.loc)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  uitext.lets,
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  uitext.welcomeback,
                  style: TextStyle(
                    color: Uicolors.black54color,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Text(
                  uitext.username,
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    color: Uicolors.containercolor5,
                  ),
                ),
              ),
              textFieldUsedWidget(
                hintname: uitext.hintuser,
                iconname: const Icon(
                  Icons.person,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 35),
                child: Text(
                  uitext.password,
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    color: Uicolors.containercolor5,
                  ),
                ),
              ),
              textFieldUsedWidgetwithSuffixicon(
                hintname: uitext.password,
                iconname: const Icon(Icons.lock),
                suffixicon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility_off),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Bottom_bar(),
                    ),
                  );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.87,
                      decoration: BoxDecoration(
                        color: Uicolors.backgroundcolor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Center(
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: 16,
                                color: Uicolors.textcolor,
                              ),
                            ),
                          ),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Uicolors.textcolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      uitext.doyou,
                      style: TextStyle(
                        color: Uicolors.black38color,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const signup_Screen(),
                          ),
                        );
                      },
                      child: Text(
                        uitext.signup,
                        style: TextStyle(
                          color: Uicolors.blackcolor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    color: Uicolors.bluecolor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.facebook,
                          color: Uicolors.textcolor,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.14,
                      ),
                      Center(
                        child: Text(
                          uitext.facebook,
                          style: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 14,
                            color: Uicolors.textcolor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
