import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Orderfailed extends StatelessWidget {
  const Orderfailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('ORDER COMPELETE'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
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
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/Union.png'),
                  ),
                ),
                child: Icon(
                  Icons.unarchive_outlined,
                  size: 45,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Order Failed',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontFamily: 'DMSans',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your payment occurred an error',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black38,
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color.fromARGB(66, 117, 116, 116),
            indent: 10,
            endIndent: 10,
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Icon(Icons.error_outline),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do not worry',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.emoji_emotions_rounded,
                  color: Color.fromARGB(255, 146, 135, 38),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Keep clam,sometimes it happens',
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
              color: Colors.black26,
            ),
          ),
          Text(
            'Please go back and check your payment method',
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
              color: Colors.black26,
            ),
          ),
          Text(
            'or contact us',
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w400,
              color: Colors.black26,
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
                    color: const Color(0xffC6AB59),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        'REVIEW PAYEMENT METHOD',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    leading: const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
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
                      'PLEASE... I NEED HELP!',
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
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
