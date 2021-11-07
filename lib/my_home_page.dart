import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:shariful_islam_demo/listview_page.dart';
import 'package:shariful_islam_demo/log_in.dart';
import 'package:shariful_islam_demo/menu_widget.dart';
import 'package:shariful_islam_demo/second_page.dart';
import 'package:shariful_islam_demo/utills/all_strings.dart';
import 'package:slide_drawer/slide_drawer.dart';

String imgSrcAvatar="https://previews.123rf.com/images/pandavector/pandavector1704/pandavector170406094/76736955-girl-icon-flat-single-avatar-peaople-icon-from-the-big-avatar-flat-.jpg";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();
String title= "Home";

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    title = "Home";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      SliderMenuContainer(
        appBarColor: Colors.teal,
        key: _key,
        sliderMenuCloseSize: 0,
        title: Text("Profile",style: TextStyle(color: Colors.white,
            fontSize: width*0.055,fontWeight: FontWeight.w800),),
        shadowColor: Colors.transparent,
        drawerIconColor: Colors.white,
        drawerIconSize: width*0.08,
        //slideDirection: Slider.RIGHT_TO_LEFT,
        //appBarPadding: const EdgeInsets.only(top: 10),
        sliderMenuOpenSize: 300,
        appBarHeight: 100,
        appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        sliderMenu:
        MenuWidget(
          //  onProfilePictureClick: () {},
          onItemClick: (title) {
            _key.currentState!.closeDrawer();
            setState(() {
              title = title;
              if(title=="Friend Lists")
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondpage()),
                );
              }
              else if(title=="Setting")
              {

              }
              else if(title=="List Show")

              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
              }
              else if(title=="LogOut")
              {

              }
              else if(title=="Notification")
              {

              }
            });
          },
        ),
        sliderMain:
        Column(
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
                            imgSrcAvatar
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
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ListViewPage()));
                }, child: Text("Go To Second Page")
            ),
          ],
        ),
      ),
    );
  }
}