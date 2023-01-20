import 'package:assigment/Screens/profile.dart';
import 'package:assigment/untils/color.dart';
import 'package:assigment/untils/text.dart';
import 'package:flutter/material.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  int y = 1600;
  int x = 0;
  int z = 1600;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(uitext.mycart),
        centerTitle: true,
        foregroundColor: Uicolors.backgroundcolor,
        backgroundColor: Uicolors.transparentcolor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Uicolors.blackcolor,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //main container not compeleted
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Uicolors.containercolor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.28,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/smallspeaker.png',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.width * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            uitext.beosound,
                            style:const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    uitext.color,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Uicolors.black38color,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.height *
                                        0.04,
                                    decoration: BoxDecoration(
                                      color: Uicolors.blackcolor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    uitext.size,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Uicolors.black38color,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.035,
                                    width: MediaQuery.of(context).size.height *
                                        0.035,
                                    decoration: BoxDecoration(
                                      color: Uicolors.textcolor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        uitext.s,
                                        style: TextStyle(
                                          color: Uicolors.black26color,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              '\$$y',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (x > 0) {
                                      x--;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Uicolors.black26color,
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                width: MediaQuery.of(context).size.width * 0.09,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Uicolors.textcolor,
                                ),
                                child: Center(
                                  child: Text(
                                    '$x',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    int s = y + z;
                                    s;
                                    x++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Uicolors.black26color,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Uicolors.transparentcolor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Uicolors.black12color),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_bag,
                        color: Uicolors.blackcolor,
                        size: 30,
                      ),
                      title: Text(
                        uitext.standard,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          uitext.days,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_downward,
                        color: Uicolors.blackcolor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Uicolors.transparentcolor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Uicolors.black12color,
                    ),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.percent_sharp,
                        color: Uicolors.blackcolor,
                        size: 30,
                      ),
                      title: Text(
                        uitext.promo,
                        style:const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          uitext.dollar,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      trailing: Wrap(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.039,
                            width: MediaQuery.of(context).size.width * 0.12,
                            decoration: BoxDecoration(
                              color: Uicolors.backgroundcolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                uitext.st,
                                style: TextStyle(
                                  color: Uicolors.blackcolor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        const  SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.done_rounded,
                            color: Uicolors.containercolor1,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
             const SizedBox(
                height: 80,
              ),
              Divider(
                color: Uicolors.black26color,
              ),
            const  SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    uitext.total,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Uicolors.blackcolor,
                    ),
                  ),
                  Text(
                    uitext.dollaramount,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Uicolors.blackcolor,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profile_Screen(),
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.082,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Uicolors.backgroundcolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          uitext.check,
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
