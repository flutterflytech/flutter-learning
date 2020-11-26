import 'package:flutter/material.dart';

class DynamicListViewScreen extends StatefulWidget {
  @override
  _DynamicListViewScreenState createState() => _DynamicListViewScreenState();
}

class _DynamicListViewScreenState extends State<DynamicListViewScreen> {
  List<String> names = ["Alok 1", "Alok 2","Alok 3", "Alok 4","Alok 5", "Alok 6","Alok 7", "Alok 8","Alok 9", "Alok 10", "Alok 11"];

  // A Separate Function called from itemBuilder
  Widget buildBody(BuildContext ctxt, int index) {
    return new Text(names[index]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: new ListView.builder
              (
                itemCount: names.length,
                itemBuilder: (BuildContext ctxt, int index) => buildBody(ctxt, index)
            ),
          ),
        ),
      ),
    );
  }


}
