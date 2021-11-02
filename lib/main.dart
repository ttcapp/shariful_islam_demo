import 'package:flutter/material.dart';
import 'package:shariful_islam_demo/log_in.dart';
import 'package:shariful_islam_demo/my_home_page.dart';
import 'package:shariful_islam_demo/second_page.dart';
import 'package:slide_drawer/slide_drawer.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorkey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorkey,
      home:  SlideDrawer(
        offsetFromRight: 50,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF000046),
            Color(0xFF1CB5E0),
          ],
        ),
        items: [
          MenuItem('Home',
              icon: Icons.account_balance,
              onTap: (){}),
          MenuItem('Second Page',
              icon: Icons.visibility,
              onTap: (){
            navigatorkey.currentState!.push(MaterialPageRoute
              (builder: (context)=>Secondpage()));
              }),
          MenuItem('Third Page',
              icon: Icons.ac_unit,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.account_circle_rounded,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.settings,
              onTap: (){}),
        ],
        child: LogIn(),
      ),
    );
  }
}
