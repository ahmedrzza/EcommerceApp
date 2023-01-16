import 'package:assigment/Screens/Single_prodict.dart';
import 'package:assigment/Screens/cart.dart';
import 'package:flutter/material.dart';

import '../untils/widget.dart';

class Bottom_Sheet extends StatelessWidget {
  const Bottom_Sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 25, right: 25),
              child: Text(
                'Gender',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DMSans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    filtercontainer(context, "Men", Color(0xffC6AB59)),
                    filtercontainer(context, 'Women', Color(0xffF3F6F8)),
                    filtercontainer(context, 'Both', Color(0xffF3F6F8))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black26,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 25, right: 25),
              child: Text(
                'Price Rate',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DMSans',
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, bottom: 10, top: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/Price Rate.png'),
                    ),
                  ),
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F6F8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('MIN'),
                        ),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    color: Color(0xffF3F6F8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('MAX'),
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black26,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  colorcontainerwithchild(
                      context,
                      Color(0xffC6AB59),
                      Icon(
                        Icons.done,
                        color: Colors.black,
                        size: 30,
                      )), //1
                  colorcontainer(context, Color(0xff02C697)), //2
                  colorcontainer(context, Color(0xffF8B6C3)), //3
                  colorcontainer(context, Color(0xff3C79E6)), //4
                  colorcontainer(context, Color(0xff171717)), //5
                  colorcontainer(context, Color(0xff8F92A1)), //6
                ],
              ),
            ),
            Divider(
              color: Colors.black26,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Single_product_Screen(),
                        ),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffC6AB59),
                      ),
                      child: Center(
                        child: Text('APPLY FILTERS(4)'),
                      ),
                    ),
                  ),
                  filtercontainer(context, 'RESET', Color(0xffF3F6F8))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
