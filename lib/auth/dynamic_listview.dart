import 'package:flutter/material.dart';
/***
 * Dynamic listView - equivalent to RecyclerView in Android that can hold large no of dynaic data as list
 ****/
class DynamicListViewScreen extends StatefulWidget {
  @override
  _DynamicListViewScreenState createState() => _DynamicListViewScreenState();
}

class _DynamicListViewScreenState extends State<DynamicListViewScreen> {
  List<Employee> empList = new List<Employee>();

  List<Employee> addData() {
    int i = 1;

    while (i <= 100) {
      var employee = new Employee();
      employee.empId = "EMP $i";
      employee.empName = "Alok $i";
      employee.profile = "Android Dev $i";
      employee.exprience = 1;
      empList.add(employee);
      i++;

      var employee1 = new Employee();
      employee1.empId = "EMP $i";
      employee1.empName = "Ashis $i";
      employee1.profile = "android-flutter Dev $i";
      employee1.exprience = 2;
      empList.add(employee1);
      i++;
    }
    return empList;
  }

  // A Separate Function called from itemBuilder
  Widget buildBody(BuildContext ctxt, int index) {
    return ListTile(
      title: Text("EmpId : ${empList[index].empId} \nName : ${empList[index].empName} "),
      trailing: Icon(
        Icons.account_balance_wallet,
        color: Colors.red,
        size: 40,
      ),
      subtitle: Text("Profile : ${empList[index].profile} .\nExprience : ${empList[index].exprience} ."),
      leading: FlutterLogo(),
    );
  }

  @override
  void initState() {
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: new ListView.builder(
                itemCount: empList.length,
                itemBuilder: (BuildContext ctxt, int index) =>
                    buildBody(ctxt, index)),
          ),
        ),
      ),
    );
  }
}

/** Modal class for holding Employee data **/

class Employee {
  String empId;
  String empName;
  String profile;
  int exprience;
}
