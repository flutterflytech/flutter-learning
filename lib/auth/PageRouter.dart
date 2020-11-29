import 'package:flutter/material.dart';



///UI for PageNo - 1
class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(title: "Page",
      home: Scaffold(
        body: Container(

        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    /// like in android we are using intent to switch between activities
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

/// UI for Page No 2
class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('This is Page No 2'),
      ),
    );
  }
}
