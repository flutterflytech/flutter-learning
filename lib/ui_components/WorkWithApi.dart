import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
void main() => runApp(WorkWithApi());



class WorkWithApi extends StatefulWidget {
  @override
  _WorkWithApiState createState() => _WorkWithApiState();
}

class _WorkWithApiState extends State<WorkWithApi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                child: RaisedButton(
                  onPressed: (){
                    fetchUsersFromGitHub();
                  },
                  child: Text('hvc'),
                ),

                // child: new FutureBuilder(
                //     future: fetchUsersFromGitHub(),
                //     builder: (context, snap) {
                //       if (snap.hasData) {
                //         return new ListView.builder(
                //             itemCount: snap.data.length,
                //             itemBuilder: (context, index) {
                //
                //             });
                //       } else if (snap.hasError) {
                //
                //       }
                //     }),
              ),
              ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index){
                  return ListTile(

                  );
                  })
            ],
          ),
        ),
      ),
    );
  }

  Future<List<User>> fetchUsersFromGitHub() async {
    final response = await http.get('https://api.github.com/users');
    print(response.body);
    List responseJson = json.decode(response.body.toString());
    List<User> userList = createUserList(responseJson);
    print("############" + userList.toString());
    return userList;
  }

  List<User> createUserList(List data) {
    List<User> list = new List<User>();
    for (int i = 0; i < data.length; i++) {
      String title = data[i]["login"];
      int id = data[i]["id"];
      User user = new User(name: title, id: id);
      list.add(user);
    }
    return list;
  }
}

class User {
  String name;
  int id;

  User({this.name, this.id});
}
