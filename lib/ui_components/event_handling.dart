import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EventHandling extends StatefulWidget {
  @override
  _EventHandlingState createState() => _EventHandlingState();
}

class _EventHandlingState extends State<EventHandling> {
  final firstTfController = TextEditingController();
  final secTfController = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Event Handling"),
        ),
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    
                    keyboardType: TextInputType.number,
                    controller: firstTfController,
                    maxLength: 4,
                    decoration: new InputDecoration(
                        hintText: 'Enter first Number',
                        helperText: 'This is helper Text1'),
                  ),
                  TextFormField(
                    maxLength: 4,
                    keyboardType: TextInputType.number,
                    controller: secTfController,
                    decoration: new InputDecoration(
                        hintText: 'Enter second Number',
                        helperText: 'This is helper Text2'),
                  ),
                  Text(result),
                  Row(
                    children: <Widget>[
                      SizedBox(height: 2.0, width: 1.0),
                      RaisedButton(
                          child: Text('Add'),
                          onPressed: () {
                            proceed("+");
                          }),
                      SizedBox(height: 2.0, width: 3.0),
                      RaisedButton(
                          child: Text('Substract'),
                          onPressed: () {
                            proceed("-");
                          }),
                      SizedBox(height: 2.0, width: 3.0),
                      RaisedButton(
                          child: Text('Multiply'),
                          onPressed: () {
                            proceed("*");
                          }),
                      SizedBox(height: 2.0, width: 3.0),
                      RaisedButton(
                          child: Text('Divide'),
                          onPressed: () {
                            proceed("/");
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      title: "Event Handling",
    );
  }

  void proceed(String operator) {
    var message = "";
    switch (operator) {
      case '+':
        {
          message =
              "Sum : ${(int.tryParse(firstTfController.text) + int.tryParse(secTfController.text))}";
          setState(() {
            result =
                "Difference : ${(int.tryParse(firstTfController.text) + int.tryParse(secTfController.text))}";
          });
        }
        break;

      case '-':
        {
          message =
              "Difference : ${(int.tryParse(firstTfController.text) - int.tryParse(secTfController.text))}";

          setState(() {
            result =
                "Difference : ${(int.tryParse(firstTfController.text) - int.tryParse(secTfController.text))}";
          });
        }
        break;

      case '*':
        message =
            "Product : ${(int.tryParse(firstTfController.text) * int.tryParse(secTfController.text))}";
        setState(() {
          result =
              "Product : ${(int.tryParse(firstTfController.text) * int.tryParse(secTfController.text))}";
        });
        break;

        case '/':
        message =
            "Quotient : ${(double.tryParse(firstTfController.text) / double.tryParse(secTfController.text))}";
        setState(() {
          result =
              "Quotient : ${(int.tryParse(firstTfController.text) / int.tryParse(secTfController.text))}";
        });
        break;
    }
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void reset() {

  }
}
