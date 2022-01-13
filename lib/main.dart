// @dart=2.9
import 'package:flutter_web_app/Screens/addEmployeeScreen.dart';
import 'package:flutter_web_app/Screens/employee_detail.dart';
//import 'package:moor/moor_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_app/apis/emplyee_provider.dart';
import 'package:flutter_web_app/widgets/navbar.dart';
import 'package:provider/provider.dart';
import 'package:flutter_web_app/Profile.dart';
import 'package:flutter_web_app/Screens/Employees.dart';
import 'package:flutter_web_app/Screens/Settings.dart';
import 'Screens/Help.dart';
//import 'Screens/promoEmps.dart';
import 'Dashboard.dart';
//import './Screens/left.dart';
import 'Screens/Departments.dart';
import 'Screens/promotion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmployeeProvider(),
      child: MaterialApp(
        theme: ThemeData(
          unselectedWidgetColor: Color(0xffF25767),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MyHomePage(),
        initialRoute: '/',
        routes: {
          //depart
          Depatrments.route: (f) => Depatrments(),
          Employees.route: (f) => Employees(),
          Settings.route: (f) => Settings(),
          Help.route: (f) => Help(),
          AddEmployeeScreen.route: (f) => AddEmployeeScreen(),
          EmployeeDetail.route: (f) => EmployeeDetail(),
          //Left.route: (f) => Left(),
          Promotion.route: (f) => Promotion(),
          // PromoEmployees.route: (f) => PromoEmployees(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Navbar(MediaQuery.of(context).size.height), Dashboard(),
          Profile(),
          // Text('Flutter web app'),
        ],
      ),
    );
  }
}
