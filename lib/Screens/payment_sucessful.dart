import 'package:assigment/Screens/order_failed.dart';
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
        title: Text('ORDER COMPLETE'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.more_vert),
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
                color: Color(0xffC6AB59),
              ),
              child: Image(image: AssetImage('assets/Shape.png')),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Payment Sucessful!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Text(
            'Order will arrive in 3 days!',
            style: TextStyle(color: Colors.black38, fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Divider(
              color: Colors.black26,
              thickness: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              payment_sucessfulContainerWidget(
                image: DecorationImage(
                  image: AssetImage('assets/smallspeaker.png'),
                ),
                Text: Text(
                  'Beosound 1',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              payment_sucessfulContainerWidget(
                image: DecorationImage(image: AssetImage('assets/speaker.png')),
                Text: Text(
                  'Beosound...',
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              payment_sucessfulContainerWidget(
                image: DecorationImage(image: AssetImage('assets/black.png')),
                Text: Text(
                  'Beoplay A9',
                  style: TextStyle(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Orderfailed()));
              },
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    color: const Color(0xffC6AB59),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: Text(
                        'SEE ORDER DETAILS',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
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
