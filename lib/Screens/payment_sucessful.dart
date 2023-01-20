import 'package:assigment/Screens/order_failed.dart';
import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:assigment/untils/widget.dart';
import 'package:flutter/material.dart';

class Payment_Sucessfull extends StatefulWidget {
  const Payment_Sucessfull({super.key});

  @override
  State<Payment_Sucessfull> createState() => _Payment_SucessfullState();
}

class _Payment_SucessfullState extends State<Payment_Sucessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(uitext.ordercom),
        backgroundColor: Uicolors.transparentcolor,
        elevation: 0,
        foregroundColor: Uicolors.blackcolor,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Uicolors.backgroundcolor,
              ),
              child: const Image(
                image: AssetImage('assets/Shape.png'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                uitext.payment,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Text(
            uitext.orderwill,
            style: TextStyle(color: Uicolors.black38color, fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Divider(
              color: Uicolors.black26color,
              thickness: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              payment_sucessfulContainerWidget(
                image: const DecorationImage(
                  image: AssetImage('assets/smallspeaker.png'),
                ),
                Text: Text(
                  uitext.beosound,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              payment_sucessfulContainerWidget(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/speaker.png',
                  ),
                ),
                Text: Text(
                  '${uitext.boeSound}...',
                  style: const TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              payment_sucessfulContainerWidget(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/black.png',
                  ),
                ),
                Text: Text(
                  uitext.beoplay,
                  style: const TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Orderfailed(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    color: Uicolors.backgroundcolor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: Text(
                        uitext.seeorder,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Uicolors.textcolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DMSans',
                        ),
                      ),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Uicolors.textcolor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
