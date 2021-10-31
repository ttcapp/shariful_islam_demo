import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}
double conHeight=50;
double conWidth=50;
class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          InkWell(
            onDoubleTap: (){
              setState(() {
                conHeight=50;
                conWidth=50;
              });
            },
            onTap: (){
              setState(() {
                conHeight=250;
                conWidth=250;
              });
            },
            child: AnimatedContainer(
              height: conHeight,
              width: conWidth,
              color: Colors.red,
                duration: Duration(milliseconds: 4000),

            ),
          ),
        ],
      ),
    );
  }
}
