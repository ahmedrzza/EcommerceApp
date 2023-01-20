import 'package:assigment/Screens/Single_prodict.dart';
import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
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
                top: 20,
                bottom: 10,
                left: 25,
                right: 25,
              ),
              child: Text(
                uitext.gender,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DMSans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    filtercontainer(
                      context,
                      uitext.men,
                      Uicolors.backgroundcolor,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    filtercontainer(
                        context, uitext.women, Uicolors.containercolor),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    filtercontainer(
                        context, uitext.both, Uicolors.containercolor)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: Uicolors.black26color,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
                left: 25,
                right: 25,
              ),
              child: Text(
                uitext.price,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DMSans',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 10,
                top: 15,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/Price Rate.png'),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                      color: Uicolors.containercolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(uitext.min),
                        ),
                      const  Icon(
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
                    color: Uicolors.containercolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(uitext.max),
                      ),
                      const Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 35,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Uicolors.black26color,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  colorcontainerwithchild(
                    context,
                    Uicolors.backgroundcolor,
                    Icon(
                      Icons.done,
                      color: Uicolors.blackcolor,
                      size: 30,
                    ),
                  ), //1
                  colorcontainer(context, Uicolors.containercolor1), //2
                  colorcontainer(context, Uicolors.containercolor2), //3
                  colorcontainer(context, Uicolors.containercolor3), //4
                  colorcontainer(context, Uicolors.containercolor4), //5
                  colorcontainer(context, Uicolors.containercolor5), //6
                ],
              ),
            ),
            Divider(
              color: Uicolors.black26color,
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
                          builder: (context) => const Single_product_Screen(),
                        ),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Uicolors.backgroundcolor,
                      ),
                      child: Center(
                        child: Text(
                          uitext.apply,
                          style: TextStyle(
                            color: Uicolors.textcolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  filtercontainer(
                      context, uitext.reset, Uicolors.containercolor)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
