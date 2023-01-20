import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';

class Orderfailed extends StatelessWidget {
  const Orderfailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            uitext.ordercom,
          ),
        ),
        backgroundColor: Uicolors.transparentcolor,
        elevation: 0,
        foregroundColor: Uicolors.blackcolor,
        actions:const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Uicolors.pink100,
                  borderRadius: BorderRadius.circular(30),
                  image:const DecorationImage(
                    image: AssetImage('assets/Union.png'),
                  ),
                ),
                child: const Icon(
                  Icons.unarchive_outlined,
                  size: 45,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
             uitext.orderfai ,
              style:const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontFamily: 'DMSans',
              ),
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          Text(
            uitext.ypayment,
            style: TextStyle(
              fontSize: 14,
              color: Uicolors.black38color,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          Divider(
            color: Uicolors.dividerArgb,
            indent: 10,
            endIndent: 10,
            height: 1,
            thickness: 1,
          ),
         const Padding(
            padding:  EdgeInsets.only(
              top: 10,
            ),
            child: Icon(
              Icons.error_outline,
            ),
          ),
        const  SizedBox(
            height: 5,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  uitext.donot,
                  style:const TextStyle(
                    fontSize: 16,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.emoji_emotions_rounded,
                  color: Uicolors.emojicolor,
                ),
              ],
            ),
          ),
         const SizedBox(
            height: 5,
          ),
          Text(
            uitext.keep,
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
              color: Uicolors.black26color,
            ),
          ),
          Text(
            uitext.please,
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
              color: Uicolors.black26color,
            ),
          ),
          Text(
            uitext.orcontact,
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
              color: Uicolors.black26color,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
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
                      child: Text(
                        uitext.review,
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w700,
                          color: Uicolors.textcolor,
                        ),
                      ),
                    ),
                    leading: Padding(
                      padding:const EdgeInsets.only(bottom: 10),
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
          InkWell(
            onTap: () {},
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    color: Colors.blue[40],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      uitext.pleasehelp,
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
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
