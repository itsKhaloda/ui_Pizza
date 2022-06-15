import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:myapp/customCard/customCardModel.dart';
//import 'package:myapp/customCard/customizedCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromRGBO(243, 244, 245, 1),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/pizzaLogo.png'),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset(
                    'images/menu.png',
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment(-.55, 0.0),
                child: Text(
                  "Good morninig",
                  style: GoogleFonts.montserrat(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w200,
                    fontSize: 25,
                    color: Color.fromRGBO(22, 39, 50, 1),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-.7, 0.0),
                child: Text(
                  "Khalid,",
                  style: GoogleFonts.montserrat(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Color.fromRGBO(22, 39, 50, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Color.fromRGBO(243, 244, 245, 1),
                child: TabBar(
                  unselectedLabelColor: Color.fromRGBO(22, 39, 50, 1),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(187, 25, 76, 1),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Reviews",
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Conversation",
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: SizedBox(
                  height: 20,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(243, 244, 245, 1),
                ),
                width: 350,
                height: 560,
                child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        Card(
                          margin: EdgeInsets.all(15),
                          elevation: 0,
                          color: Colors.transparent,
                          borderOnForeground: false,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x9c1e65).withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                    contentPadding: EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    leading: Image(
                                      height: 45,
                                      width: 45,
                                      image: AssetImage('images/avatar.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    title: Text(
                                      "Khalid Hassan",
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "2018/06/04   12:20PM",
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    trailing: Image(
                                      image: AssetImage('images/message.png'),
                                      width: 35,
                                      height: 35,
                                    )),
                                Divider(
                                  thickness: 0.09,
                                ),
                                ListTile(
                                    contentPadding: EdgeInsets.only(
                                        right: 15, left: 20, bottom: 10),
                                    leading: Image(
                                      height: 25,
                                      width: 25,
                                      image: AssetImage('images/smile.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    title: Text("Excellent",
                                        style: GoogleFonts.montserrat(
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                            color: Colors.grey)),
                                    trailing: Image(
                                      image: AssetImage('images/ThreeDots.png'),
                                      width: 35,
                                      height: 35,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          margin: EdgeInsets.all(15),
                          elevation: 0,
                          color: Colors.transparent,
                          borderOnForeground: false,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x9c1e65).withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                    contentPadding: EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    leading: Image(
                                      height: 45,
                                      width: 45,
                                      image: AssetImage('images/avatar.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    title: Text(
                                      "Khalid Hassan",
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "2018/06/04   12:20PM",
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    trailing: Image(
                                      image: AssetImage('images/message.png'),
                                      width: 35,
                                      height: 35,
                                    )),
                                Divider(
                                  thickness: 0.09,
                                ),
                                ListTile(
                                    contentPadding: EdgeInsets.only(
                                        right: 15, left: 20, bottom: 10),
                                    leading: Image(
                                      height: 25,
                                      width: 25,
                                      image: AssetImage('images/smile.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    title: Text("Excellent",
                                        style: GoogleFonts.montserrat(
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                            color: Colors.grey)),
                                    trailing: Image(
                                      image: AssetImage('images/ThreeDots.png'),
                                      width: 35,
                                      height: 35,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          margin: EdgeInsets.all(15),
                          elevation: 0,
                          color: Colors.transparent,
                          borderOnForeground: false,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x9c1e65).withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                    contentPadding: EdgeInsets.only(
                                      right: 10,
                                      left: 10,
                                    ),
                                    leading: Image(
                                      height: 45,
                                      width: 45,
                                      image: AssetImage('images/avatar.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    title: Text(
                                      "Khalid Hassan",
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "2018/06/04   12:20PM",
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    trailing: Image(
                                      image: AssetImage('images/message.png'),
                                      width: 35,
                                      height: 35,
                                    )),
                                Divider(
                                  thickness: 0.09,
                                ),
                                ListTile(
                                    contentPadding: EdgeInsets.only(
                                        right: 15, left: 20, bottom: 10),
                                    leading: Image(
                                      height: 25,
                                      width: 25,
                                      image: AssetImage('images/smile.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    title: Text("Excellent",
                                        style: GoogleFonts.montserrat(
                                            fontStyle: FontStyle.normal,
                                            fontSize: 15,
                                            color: Colors.grey)),
                                    trailing: Image(
                                      image: AssetImage('images/ThreeDots.png'),
                                      width: 35,
                                      height: 35,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        "NO CONVERSATIONS YET",
                        style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
