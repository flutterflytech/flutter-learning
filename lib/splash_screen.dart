import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MySpashScreen extends StatefulWidget {
  @override
  _MySpashScreenState createState() => _MySpashScreenState();
}

class _MySpashScreenState extends State<MySpashScreen> {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child: Stack(
            children: [
              Center(
                child: Image.network(
                  'https://images.unsplash.com/photo-1527769929977-c341ee9f2033?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80',
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
