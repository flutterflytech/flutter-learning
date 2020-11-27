import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:poc_flutter/auth/PageRouter.dart';
import 'package:poc_flutter/auth/dynamic_listview.dart';
import 'package:poc_flutter/home_screen.dart';
import 'package:poc_flutter/splash_screen.dart';

//  void main() => runApp(MyApp());
//   void main() => runApp(ListViewScreen());
void main() => runApp(HomeScreen());
//    void main() => runApp(DynamicListViewScreen());
//void main() => runApp(MySpashScreen());
//void main() => runApp(PageRouter());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Stack(
              children: [
                //Image.network('https://wallpaperaccess.com/full/1266627.jpg',height: 900,),
                //Image.network('https://images.unsplash.com/photo-1508726295872-0b87b9999406?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',height: 900,),
                Image.network(
                  'https://images.unsplash.com/photo-1527769929977-c341ee9f2033?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80',
                  height: 1000,
                ),
                SafeArea(
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Image.network(
                                    //'https://image.freepik.com/free-vector/blue-geometric-technological-background_1055-1907.jpg',
                                    'https://i.pinimg.com/originals/1c/aa/c5/1caac55143e3e11461c6ae5962403deb.jpg',
                                    height: 90,
                                    width: 120)),
                          ),
                          Text("UserName", textAlign: TextAlign.start),
                          TextField(
                              cursorColor: Colors.black,
                              obscureText: false,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                              ],
                              decoration: new InputDecoration(
                                  //border: InputBorder.none,
                                  //focusedBorder: InputBorder.none,
                                  //enabledBorder: InputBorder.none,
                                  //errorBorder: InputBorder.none,
                                  //disabledBorder: InputBorder.none,
                                  //contentPadding:
                                  // EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                  hintText: "Enter Username ")),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text("Password", textAlign: TextAlign.start),
                          ),
                          TextField(
                              cursorColor: Colors.black,
                              obscureText: true,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                              ],
                              decoration: new InputDecoration(
                                  //border: InputBorder.none,
                                  //focusedBorder: InputBorder.none,
                                  //enabledBorder: InputBorder.none,
                                  //errorBorder: InputBorder.none,
                                  //disabledBorder: InputBorder.none,
                                  //contentPadding:
                                  // EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                  hintText: "Enter Password ")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  'Forget Password',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: RaisedButton(
                              onPressed: () {
                                showToastMessage();
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.red,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.red,
                                height: 2.0,
                                width: 115,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 20, bottom: 20),
                                child: Text('OR Login With'),
                              ),
                              Container(
                                color: Colors.red,
                                height: 2.0,
                                width: 115,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROri2GYit4jjoHZCCdnW5UFGQlzJSg1XB_8g&usqp=CAU',
                                height: 40,
                                width: 150,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROri2GYit4jjoHZCCdnW5UFGQlzJSg1XB_8g&usqp=CAU',
                                height: 40,
                                width: 150,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void showToastMessage() {
    Fluttertoast.showToast(
        msg: "Login Button was Clicked.....",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
