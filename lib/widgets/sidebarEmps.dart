// import 'package:flutter/material.dart';
// import '../models/notifications_settings.dart';

// import 'package:provider/provider.dart';
// import '../apis/emplyee_provider.dart';

// class SideBar extends StatefulWidget {
//   @override
//   _SideBarState createState() => _SideBarState();
// }

// class _SideBarState extends State<SideBar> {
//   bool value = false;
//   final notifications = [
//     NotificationSettings(title: 'IT'),
//     NotificationSettings(title: 'Accounting'),
//     NotificationSettings(title: 'HR'),
//   ];
//   final notifications1 = [
//     NotificationSettings(title: 'Max NumberOf Projects'),
//     NotificationSettings(title: 'Min NumberOf Projects'),
//   ];
//   Widget buildSingleCheckbox(NotificationSettings notification) =>
//       buildCheckbox(
//           notification: notification,
//           onClicked: () {
//             setState(() {
//               final newValue = !notification.value;
//               notification.value = newValue;
//             });
//           });
//   Widget buildSingleCheckbox1(NotificationSettings notification) =>
//       buildCheckbox(
//           notification: notification,
//           onClicked: () {
//             setState(() {
//               final newValue = !notification.value;
//               notification.value = newValue;
//             });
//           });

//   Widget buildCheckbox({
//     @required NotificationSettings notification,
//     @required VoidCallback onClicked,
//   }) =>
//       ListTile(
//         onTap: onClicked,
//         leading: Checkbox(
//           value: notification.value,
//           // checkColor: Color(0xffF25767),
//           //hoverColor: Color(0xffF25767),

//           onChanged: (value) => onClicked(),
//         ),
//         title: Text(
//           notification.title,
//           style: TextStyle(
//             fontSize: 15,
//             //fontWeight: FontWeight.bold,
//           ),
//         ),
//       );

//   @override
//   Widget build(BuildContext context) {
//     final emp = Provider.of<EmployeeProvider>(context);

//     return Container(
//       color: Colors.white24,
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(2.0),
//           child: Card(
//             elevation: 8,
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.spaceAround,
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 4),
//                   child: Text(
//                     'Departments:',
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.grey,
//                         fontStyle: FontStyle.normal),
//                     textAlign: TextAlign.start,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 180,
//                   width: MediaQuery.of(context).size.width,

//                   // child: Padding(
//                   //   padding: const EdgeInsets.all(2.0),
//                   child: ListView(
//                     children: [
//                       ...notifications.map(buildSingleCheckbox).toList(),
//                     ],
//                   ),
//                 ),
//                 //  ),
//                 Divider(
//                   color: Colors.grey,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 4),
//                   child: Text(
//                     'Number Of Projects :',
//                     style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.grey,
//                         fontStyle: FontStyle.normal),
//                     textAlign: TextAlign.start,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 180,
//                   width: MediaQuery.of(context).size.width,
//                   child: ListView(
//                     children: [
//                       ...notifications1.map(buildSingleCheckbox1).toList(),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import '../models/notifications_settings.dart';

// // import 'package:provider/provider.dart';
// // import '../apis/emplyee_provider.dart';

// // class SideBar extends StatefulWidget {
// //   @override
// //   _SideBarState createState() => _SideBarState();
// // }

// // class _SideBarState extends State<SideBar> {
// //   bool _isIT = false;
// //   bool _isAll = true;
// //   bool _isAccounting = false;
// //   bool _isHR = false;

// //   Widget checkedBox(String title, bool val) {
// //     return CheckboxListTile(
// //       title: Text(title),
// //       value: val,
// //       onChanged: (value) {
// //         setState(() {
// //           val = !value;
// //           value = val;
// //         });
// //         print(title + val.toString());
// //       },
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       color: Colors.white24,
// //       child: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.all(2.0),
// //           child: Card(
// //             elevation: 8,
// //             child: Column(
// //               children: [
// //                 Container(
// //                   padding: EdgeInsets.all(16.0),
// //                   child: Text(
// //                     'Departments',
// //                     style: TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 20.0,
// //                         color: Colors.black54),
// //                   ),
// //                 ),
// //                 Expanded(
// //                     child: SingleChildScrollView(
// //                       scrollDirection: Axis.vertical,
// //                       child: Column(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           SizedBox(
// //                             height: 10,
// //                           ),
// //                           checkedBox('All', _isAll),
// //                           checkedBox('IT', _isIT),
// //                           checkedBox('Accounting', _isAccounting),
// //                           checkedBox('HR', _isHR),
// //                         ],
// //                       ),
// //                     ),
// //                     flex: 1),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
