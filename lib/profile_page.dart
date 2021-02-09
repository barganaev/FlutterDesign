import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 5,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  //height: screenHeight * 0.4,
                  color: Colors.white,
                    //decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.05),
                    child: Container(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(),
                          CircleAvatar(
                            backgroundImage: NetworkImage(''),
                            radius: screenWidth * 0.15,
                          ),
                          Text('Genadiy Golovkin', style: GoogleFonts.lato(textStyle: TextStyle(color: Color(0xFF283593), fontSize: 20, fontWeight: FontWeight.w800))),
                          Text('UX/UI Designer', style: GoogleFonts.lato(),),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.05, bottom: screenHeight * 0.05, left: screenWidth * 0.05, right: screenWidth * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text("\$8900", style: TextStyle(fontSize: 15, color: Color(0xFF283593)),),
                                    Text('Income', style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12)),)
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("\$5500", style: TextStyle(fontSize: 15, color: Color(0xFF283593))),
                                    Text('Expenses', style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12)),)
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("\$890", style: TextStyle(fontSize: 15, color: Color(0xFF283593))),
                                    Text('Loan', style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 12)),)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('Overview', style: TextStyle(color: Color(0xFF283593), fontSize: 20, fontWeight: FontWeight.w800)),
                              Icon(Icons.notifications_rounded),
                            ],
                          ),
                          Text('Sept 13, 2020', style: TextStyle(color: Color(0xFF283593)),)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Card(
                        shadowColor: Colors.grey,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(screenHeight * 0.02),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage: NetworkImage('https://lh3.googleusercontent.com/proxy/0K7SkoQWB8vpG-7_DjfHGCJglxOkFMMg6lNDyhBtIpBrdcst2__FbGROXlmSWblj37GZSjWpUJCEFdKQazMSNKl160AbSRM'),
                                      radius: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: screenWidth * 0.03),
                                          child: Text('Sent', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w800))),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: screenWidth * 0.03),
                                          child: Text('Sending Payments to Clients', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontSize: 12)),),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Text('\$150')
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(screenHeight * 0.02),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage: NetworkImage('https://www.pngkit.com/png/detail/195-1956511_png-b-w-down-arrow-jpg.png'),
                                      radius: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: screenWidth * 0.03),
                                          child: Text('Receive', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w800))),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: screenWidth * 0.03),
                                          child: Text('Receiving Salary from company', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontSize: 12))),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Text('\$250')
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(screenHeight * 0.02),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage: NetworkImage('https://cdn5.vectorstock.com/i/1000x1000/60/54/dollar-sign-currency-symbol-vector-30246054.jpg'),
                                      radius: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: screenWidth * 0.03),
                                          child: Text('Loan', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w800))),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: screenWidth * 0.03),
                                          child: Text('Loan for the Car', style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.black, fontSize: 12))),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Text('\$400')
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
