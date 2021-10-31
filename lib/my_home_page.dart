import 'package:flutter/material.dart';
import 'package:shariful_islam_demo/listview_page.dart';
import 'package:shariful_islam_demo/log_in.dart';
import 'package:shariful_islam_demo/utills/all_colors.dart';
import 'package:shariful_islam_demo/utills/all_strings.dart';

String imgSrcAvater="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcD4rxeGURBYoxQlcWdAP3op6XIjmWGogYXg&usqp=CAU";
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AllColors.appBarClr,
        title: Text(AllStrings.sharifulIslam),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>LogIn()));
              }, child: Text("LOG IN")
          ),


          ElevatedButton(
              onPressed: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>ListViewPage()));
              }, child: Text("Go To Second Page")
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
              Container(
                height: width*0.25,
                width: width*0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      imgSrcAvater
                    ),
                  ),
                  borderRadius: BorderRadius.circular(180),
                  border: Border.all(
                      width: 3,
                    color: Colors.lightBlue,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(AllStrings.post3485,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text(AllStrings.posts),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(AllStrings.follower42M,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text(AllStrings.followers),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(AllStrings.following28M,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text(AllStrings.following),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5,bottom: 5,left: 25,right: 25
                              ),
                              child: Text(AllStrings.message),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,

                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5,bottom: 5,left: 5,right: 5
                              ),
                              child: Icon(Icons.account_circle,
                              size: 15,),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
