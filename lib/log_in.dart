import 'package:flutter/material.dart';
import 'package:shariful_islam_demo/my_home_page.dart';
import 'package:shariful_islam_demo/utills/all_colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
//for global variables
String _email= "sharifulislam@gmail.com";
String _password= "123456";
TextEditingController emailCont= TextEditingController();
TextEditingController passCont= TextEditingController();

final _formkey= GlobalKey<FormState>();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.teal.shade200,
        child: Padding(
          padding: EdgeInsets.only(
            top: h*0.09,
              left: w*0.07,
              right: w*0.07
          ),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Icon(Icons.account_circle_sharp,
                size: w*0.2,
                ),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: emailCont,
                  validator: (text){
                    if(text== null || text.isEmpty){
                      return"The Field is Empty";
                    }
                    else if(text != _email){
                      return"Invalid Email";
                    }
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: AllColors.appThemeClr
                    ),
                    hintText: "Enter Your Email",
                    suffixIcon: Icon(Icons.email_rounded),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeClr
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeClr
                      ),
                    ),

                  ),
                ),
                SizedBox(height: 28,),
                TextFormField(
                  controller: passCont,
                  validator: (text){
                    if(text== null || text.isEmpty){
                      return"The Field is Empty";
                    }
                    else if(text != _password){
                      return"Invalid Password";
                    }
                  },
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: AllColors.appThemeClr
                    ),
                    hintText: "Enter Your Password",
                    suffixIcon: Icon(
                        Icons.remove_red_eye,
                      color: AllColors.appThemeClr,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeClr
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeClr
                      ),
                    ),

                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AllColors.appThemeClr
                  ),
                    onPressed:(){

                    if(_formkey.currentState!.validate()){
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context)
                      =>MyHomePage()));
                    }
                    },
                      child: Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.login),
                            SizedBox(width: 8,),
                            Text("LOG IN", style: TextStyle(
                              fontSize: 20
                            ) ,
                            ),
                          ],
                        ),
                      )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
