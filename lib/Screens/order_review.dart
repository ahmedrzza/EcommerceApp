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
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'ORDER REVIEW',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  Text('Products'),
                  Icon(Icons.arrow_circle_down_outlined)
                ],
              ),
            ),
            SizedBox(
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
                      DecorationImage(
                        image: AssetImage('assets/speaker.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                      DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                      DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                      DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    order_review(
                      context,
                      DecorationImage(
                        image: AssetImage('assets/smallspeaker.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'SHIPPING',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.pin_drop_outlined)),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '139 Karachi Sindh',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.035,
                    width: MediaQuery.of(context).size.width * 0.12,
                    decoration: BoxDecoration(
                      color: Color(0xffC6AB59),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Change',
                        style: TextStyle(
                          color: Colors.black,
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
                  top: 15, bottom: 25, left: 25, right: 25),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    title: Text('Standard'),
                    subtitle: Text('2-3 days'),
                    trailing: Icon(Icons.arrow_downward),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 10),
              child: Text(
                'PAYMENT',
                style: TextStyle(
                  color: Colors.black38,
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
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage('assets/Icon.png')),
                      Text(
                        '*** 9000',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.035,
                        width: MediaQuery.of(context).size.width * 0.13,
                        decoration: BoxDecoration(
                          color: Color(0xffC6AB59),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Change',
                            style: TextStyle(
                              color: Colors.black,
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
                color: Colors.black38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Shipping'), Text('Free')],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Total'), Text('\$9800')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 25, right: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.082,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffC6AB59),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    'PLACE ORDER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DMSans',
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
