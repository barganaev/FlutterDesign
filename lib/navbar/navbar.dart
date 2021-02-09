import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login_page_testing/login_page.dart';
import 'package:login_page_testing/payment_page.dart';
import 'package:login_page_testing/profile_page.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    ProfilePage(),
    PaymentPage(),
    //Task(),
    // NewTodoView(),
    //Text('Setting Screen'),
    LoginPage(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Color(0xFF283593),
        centerTitle: true,
        title: Text('AppBar'),
      ),*/
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: Colors.blue[50],
      bottomNavigationBar:CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color(0xff040307),
        strokeColor: Color(0x30040307),
        unSelectedColor: Color(0xffacacac),
        backgroundColor: Colors.blue[50],  //Colors.white,
        items: [
          // CustomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   title: Text("Home"),
          // ),
          // CustomNavigationBarItem(
          //   icon: Icon(Icons.shopping_cart),
          //   title: Text("Cart"),
          // ),
          // CustomNavigationBarItem(
          //   icon: Icon(Icons.lightbulb_outline),
          //   title: Text("Explore"),
          // ),
          // CustomNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   title: Text("Search"),
          // ),
          // CustomNavigationBarItem(
          //   icon: Icon(Icons.account_circle),
          //   title: Text("Me"),
          // ),
          CustomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // title: Text(
            //   'HOme',
            // ),
          ),
          CustomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
            ),
            // title: Text(
            //   'Payment',
            // ),
          ),
          CustomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            // title: Text(
            //   'Person',
            // ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      // BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //       ),
      //       title: Text(
      //         'HOme',
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.credit_card,
      //       ),
      //       title: Text(
      //         'Payment',
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //       ),
      //       title: Text(
      //         'Person',
      //       ),
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTap,
      //   selectedFontSize: 13.0,
      //   unselectedFontSize: 13.0,
      // ),
    );
  }
}
