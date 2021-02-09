import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_testing/navbar/navbar.dart';

import 'newpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double screenheight = MediaQuery.of(context).size.height;
    final double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Divider(indent: 50,),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpwDTJrK0a8EUT1om2p5KeBDVJ4uKpm83nSw&usqp=CAU'),
                      radius: 70,
                    ),
                  ),
                  Divider(indent: 13,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Material(
                          shadowColor: Colors.grey,
                          elevation: 18,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(Icons.mail_outline, size: 30,color: Colors.black,))
                            ),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Material(
                            shadowColor: Colors.grey,
                            elevation: 18,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(Icons.lock_outlined, size: 30,color: Colors.black,))
                              ),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(height: 20,),
                  Container(
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
                              child: Text('Login'),
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
                  Padding(
                    padding: EdgeInsets.only(top: screenheight * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Signup'),
                        Text('Forgot Password?')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
