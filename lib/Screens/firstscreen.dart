import 'package:assigment/Screens/signinScreen.dart';
import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';

class First_Screen extends StatelessWidget {
  const First_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.64,
              child: const Image(
                image: AssetImage('assets/Oval brown.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: MediaQuery.of(context).size.width * 0.15,
              child: const Image(
                image: AssetImage('assets/black.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              // ignore: sized_box_for_whitespace
              child: Container(
                height: MediaQuery.of(context).size.height * 0.28,
                child: const Image(
                  image: AssetImage('assets/Oval.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.65,
              left: MediaQuery.of(context).size.width * 0.23,
              child: Text(
                uitext.welcome,
                style: const TextStyle(fontSize: 24),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.70,
              left: MediaQuery.of(context).size.width * 0.15,
              child: Text(
                uitext.withlong,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.80,
              left: MediaQuery.of(context).size.width * 0.12,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Signin_Screen()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.066,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    color: const Color(0xffC6AB59),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 7, left: 15),
                      child: Center(
                        child: Text(
                          uitext.getstarted,
                          style: const TextStyle(
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
