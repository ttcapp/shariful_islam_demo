import 'package:flutter/material.dart';

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
        title: Text("SharifulIslam"),
      ),
      body: Column(
        children: [
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
                            Text("3485",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text("Posts"),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text("42M",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text("Followers"),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text("28M",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text("Following"),
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
                              child: Text("Message"),
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
