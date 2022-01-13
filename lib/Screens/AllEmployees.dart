// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_web_app/models/employee.dart';
// import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';

// class AllEmployees extends StatefulWidget {
//   AllEmployees({Key key}) : super(key: key);

//   @override
//   _AllEmployeesState createState() => _AllEmployeesState();
// }

// class _AllEmployeesState extends State<AllEmployees> {
//   List<Employee> _employee = [];
//   List<Employee> filteredEmployees = [];

//   List<Employee> get employee {
//     return [..._employee];
//   }

//   bool isSearching = false;

//   getEmployees() async {
//     //final url = Uri.parse('http://127.0.0.1:8000/emps/?format=json');
//     final response = await Dio().get('http://127.0.0.1:8000/emps/?format=json');
//     return response.data;
//     // var response = await Dio().get('https://restcountries.eu/rest/v2/all');
//     // return response.data;
//   }

//   @override
//   void initState() {
//     getEmployees().then((data) {
//       setState(() {
//         _employee = filteredEmployees = data;
//       });
//     });
//     super.initState();
//   }

//   void _filterDepartments(String departmentName) {
//     setState(() {
//       filteredEmployees =
//           _employee.where((emp) => emp.Department == departmentName).toList();
//     });
//   }
//   // void _filterMAxMin(String MaxMin) {

//   //   setState(() {
//   //     filteredEmployees =
//   //         _employee.where(
//   //           (emp)=> emp.number_project == max(1, 2)
//   //         ).toList();
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Container(),
//     );
//   }
// }
