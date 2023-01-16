import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // primary: false,
      // extendBody: true,
      // resizeToAvoidBottomInset: true,
      bottomSheet: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: 100,
                    color: Colors.transparent,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/smallspeaker.png'),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(15),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: ListTile(
                        title: Text(
                          'Beosound 1',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Wrap(
                            children: [
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xff8F92A1),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$1,600',
                                      style: TextStyle(
                                        fontFamily: 'DMSans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: 100,
                    color: Colors.transparent,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/black.png'),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(18),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: ListTile(
                        title: Text(
                          'Beoplay A9',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Wrap(
                            children: [
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC6AB59),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xff8F92A1),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$1,600',
                                      style: TextStyle(
                                        fontFamily: 'DMSans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Portable extends StatelessWidget {
  const Portable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Text('data')
      ],
    );
  }
}

class Multiroom extends StatelessWidget {
  const Multiroom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Archirecture extends StatelessWidget {
  const Archirecture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
