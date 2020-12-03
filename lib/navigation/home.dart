import 'package:flutter/material.dart';
import 'package:poc_flutter/navigation/routs.dart';
import 'package:poc_flutter/navigation/signin.dart';
import 'package:poc_flutter/navigation/signup.dart';


void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.signup: (context) => SignUpPage(),
        Routes.login: (context) => SignInPage(),
      },

      home: SafeArea(
        child: Scaffold(
          body: NewClass(),
        ),
      ),
    );
  }
}

class NewClass extends StatefulWidget {
  @override
  _NewClassState createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [

          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
            child: Text('SIGNIN'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.signup);
            },
            child: Text('SIGNUP'),
          )
        ],
      ),


    );
  }
}


