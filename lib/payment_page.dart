import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

// Some comment added here!

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05, bottom: screenHeight * 0.05, left: screenWidth * 0.05, right: screenWidth * 0.05),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(CupertinoIcons.chevron_back),
                        Icon(CupertinoIcons.search),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Recent Transactions', style: TextStyle(color: Color(0xFF283593), fontSize: 20, fontWeight: FontWeight.w700),),
                        Text('See all')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          color: Color(0xFF283593),
                          onPressed: () {  },
                          elevation: 5,
                          child: Text('All', style: TextStyle(color: Colors.white),),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {  },
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Text('Income'),
                        ),
                        RaisedButton(
                          onPressed: () {  },
                          elevation: 5,
                          child: Text('Expense'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Today', style: TextStyle(color: Color(0xFF283593), fontSize: 17, fontWeight: FontWeight.w700),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    shadowColor: Colors.grey,
                    elevation: 5,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(screenHeight * 0),
                      child:
                        ListTile(
                          title: Text('Payment', style: TextStyle(fontWeight: FontWeight.w900),),
                          subtitle: Text('Payment from Andrea', style: TextStyle(fontSize: 12),),
                          leading: Icon(CupertinoIcons.envelope, color: Color(0xFF283593)),
                          trailing: Text('\$30.00', style: TextStyle(color: Color(0xFF283593), fontWeight: FontWeight.w900),),

                        ),
                      // Container(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: <Widget>[
                      //       Row(
                      //         children: <Widget>[
                      //           Icon(CupertinoIcons.envelope_open),
                      //           Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: <Widget>[
                      //               Padding(
                      //                 padding: EdgeInsets.only(left: screenWidth * 0.03),
                      //                 child: Text('Payment'),
                      //               ),
                      //               Padding(
                      //                 padding: EdgeInsets.only(left: screenWidth * 0.03),
                      //                 child: Text('Payment from Andrea'),
                      //               )
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //       Text('\$30.00'),
                      //     ],
                      //   ),
                      // ),




                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Container(
                    child: Image(
                      //image: NetworkImage('https://w7.pngwing.com/pngs/519/586/png-transparent-split-payment-credit-card-computer-icons-payment-system-credit-card-angle-hand-payment.png'),
                      image: NetworkImage('https://w7.pngwing.com/pngs/960/912/png-transparent-cambridge-global-payments-cambridge-global-payments-payment-service-provider-company-business-company-text-service.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              // color: Colors.white.withOpacity(0.5),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              child: Text('See Details'),
                              padding: EdgeInsets.all(10),
                              textColor: Colors.white,
                              color: const Color(0xFF283593),
                              onPressed: () {
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPage(),));
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
