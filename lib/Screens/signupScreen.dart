import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';

import '../untils/widget.dart';

class signup_Screen extends StatelessWidget {
  const signup_Screen({super.key});

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
                    const Icon(
                      Icons.pin_drop_outlined,
                      size: 30,
                    ),
                    Text(uitext.loc),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  uitext.getting,
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
                  uitext.create,
                  style: TextStyle(
                    color: Uicolors.black54color,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Text(
                  uitext.email,
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    color: Uicolors.containercolor5,
                  ),
                ),
              ),
              textFieldUsedWidget(
                hintname: uitext.email,
                iconname: const Icon(Icons.email),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Text(
                  uitext.hintuser,
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    color: Uicolors.containercolor5,
                  ),
                ),
              ),
              textFieldUsedWidget(
                hintname: uitext.hintuser,
                iconname: const Icon(Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
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
                suffixicon: const Icon(Icons.visibility_off),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Uicolors.blackcolor,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.done,
                          size: 10,
                          color: Uicolors.blackcolor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      uitext.creating,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  uitext.terms,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
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
                              uitext.signupCap,
                              style: TextStyle(
                                color: Uicolors.textcolor,
                              ),
                            ),
                          ),
                        ),
                        trailing: Padding(
                          padding:const EdgeInsets.only(bottom: 15),
                          child: Icon(
                            Icons.arrow_back,
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
                      uitext.already,
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
                        Navigator.pop(
                          context,
                        );
                      },
                      child: Text(
                        uitext.signin,
                        style: TextStyle(
                          color: Uicolors.blackcolor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
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
                        padding:const EdgeInsets.only(left: 20),
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
