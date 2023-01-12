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
                  style: const TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Text(
                  uitext.email,
                  style: const TextStyle(
                    fontFamily: 'DMSans',
                    color: Color(0xff8F92A1),
                  ),
                ),
              ),
              textFieldUsedWidget(
                hintname: uitext.email,
                iconname:const Icon(Icons.email),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Text(
                  uitext.hintuser,
                  style: const TextStyle(
                    fontFamily: 'DMSans',
                    color: Color(0xff8F92A1),
                  ),
                ),
              ),
              textFieldUsedWidget(
                hintname: uitext.hintuser,
                iconname:const Icon(Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Text(
                  uitext.password,
                  style: const TextStyle(
                    fontFamily: 'DMSans',
                    color: Color(0xff8F92A1),
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
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Icon(
                          Icons.done,
                          size: 10,
                          color: Colors.black,
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
                        color: const Color(0xffC6AB59),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Center(
                            child: Text(
                              uitext.signupCap,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.arrow_back),
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
                      style: const TextStyle(color: Colors.black38),
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
                        style: const TextStyle(color: Colors.black),
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                     const Padding(
                        padding:  EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.14,
                      ),
                      Center(
                        child: Text(
                          uitext.facebook,
                          style: const TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 14,
                            color: Colors.white,
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
