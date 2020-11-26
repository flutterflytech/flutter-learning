import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 4),
                  Container(color: Colors.orange, child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Home Screen - Flutter Demo',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  )),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {

                    },
                    child: Text('Login Screen'),
                  ),


                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('Splash Screen'),
                  ),


                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('ListView Screen'),
                  ),


                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('Dynamic ListView Screen'),
                  ),


                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('ListView Screen'),
                  ),


                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text('ListView Screen'),
                  ),


                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      showToastMessage();
                    },
                    child: Text('Show Toast'),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}

void showToastMessage() {
  Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0
  );
}
