import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:assigment/untils/widget.dart';
import 'package:flutter/material.dart';

class Order_Review extends StatefulWidget {
  const Order_Review({super.key});

  @override
  State<Order_Review> createState() => _Order_ReviewState();
}

class _Order_ReviewState extends State<Order_Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Uicolors.blackcolor),
        elevation: 0,
        backgroundColor: Uicolors.transparentcolor,
        foregroundColor: Uicolors.blackcolor,
        centerTitle: true,
        title: Text(
          uitext.orderreview,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(uitext.productS),
                const  Icon(
                    Icons.arrow_circle_down_outlined,
                  )
                ],
              ),
            ),
           const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    order_review(
                      context,
                    const  DecorationImage(
                        image: AssetImage('assets/speaker.png'),
                      ),
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                    const  DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                     const DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    ),
                  const  SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                     const DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                     const DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
           const SizedBox(
              height: 30,
            ),
            Divider(
              color: Uicolors.black12color,
            ),
           const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                uitext.shipping,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Uicolors.black38color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.pin_drop_outlined,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      uitext.karachi,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.035,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                      color: Uicolors.backgroundcolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        uitext.change,
                        style: TextStyle(
                          color: Uicolors.blackcolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 25,
                left: 25,
                right: 25,
              ),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Uicolors.transparentcolor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Uicolors.black26color,
                    ),
                  ),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Icon(
                        Icons.shopping_bag,
                        color: Uicolors.blackcolor,
                        size: 30,
                      ),
                    ),
                    title: Text(uitext.standard),
                    subtitle: Text(uitext.days),
                    trailing: const Icon(Icons.arrow_downward),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: Text(
                uitext.payments,
                style: TextStyle(
                  color: Uicolors.black38color,
                ),
              ),
            ),
            //master card container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Uicolors.blackcolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Image(
                        image: AssetImage(
                          'assets/Icon.png',
                        ),
                      ),
                      Text(
                        uitext.num,
                        style: TextStyle(
                          color: Uicolors.textcolor,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.13,
                        decoration: BoxDecoration(
                          color: Uicolors.backgroundcolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            uitext.change,
                            style: TextStyle(
                              color: Uicolors.blackcolor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                color: Uicolors.black38color,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    uitext.ship,
                  ),
                  Text(
                    uitext.free,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    uitext.total,
                  ),
                  Text(
                    uitext.amount,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.082,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Uicolors.backgroundcolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    uitext.placeord,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Uicolors.textcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DMSans',
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Uicolors.textcolor,
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
