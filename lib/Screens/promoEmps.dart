import 'package:flutter/material.dart';
import 'package:flutter_web_app/apis/emplyee_provider.dart';
//import 'package:flutter_web_app/models/employee.dart';
import 'package:provider/provider.dart';
import './employee_detail.dart';

class PromoEmployees extends StatefulWidget {
  static final route = '/promotionemp';

  @override
  _PromoEmployeesState createState() => _PromoEmployeesState();
}

class _PromoEmployeesState extends State<PromoEmployees> {
  @override
  Widget build(BuildContext context) {
    // final emp =
    //     Provider.of<EmployeeProvider>(context, listen: false).getPromotion();
    return Scaffold(
      body: Text('hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii'),
      // body: Padding(
      //   padding: EdgeInsets.all(10),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       ListView.builder(
      //         itemBuilder: (BuildContext context, int index) {
      //           return Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: GestureDetector(
      //               onTap: () {
      //                 Navigator.of(context).pushReplacementNamed(
      //                     EmployeeDetail.route,
      //                     arguments: emp[index].id);
      //               },
      //               child: Container(
      //                 height: 200,
      //                 width: 80,
      //                 child: ClipRRect(
      //                   borderRadius: BorderRadius.circular(25),
      //                   child: Card(
      //                     elevation: 80,
      //                     child: Padding(
      //                       padding: const EdgeInsets.only(top: 35),
      //                       child: Center(
      //                         child: ListTile(
      //                           title: Text(
      //                             emp[index].name,
      //                             style: TextStyle(fontSize: 30),
      //                           ),
      //                           leading: Container(
      //                             height: 200,
      //                             width: 200,
      //                             child: CircleAvatar(
      //                               backgroundColor: Colors.grey,
      //                               radius: 100,
      //                               child: SizedBox(
      //                                 height: 100,
      //                                 width: 100,
      //                                 child: CircleAvatar(
      //                                   backgroundColor: Colors.grey[100],
      //                                   radius: 45,
      //                                   child: FittedBox(
      //                                     child: Image(
      //                                       image:
      //                                           NetworkImage(emp[index].photo),
      //                                       fit: BoxFit.cover,
      //                                     ),
      //                                     fit: BoxFit.cover,
      //                                   ),

      //                                   //fit: BoxFit.cover,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                           trailing: Padding(
      //                             padding: const EdgeInsets.only(right: 20),
      //                             child: RaisedButton(
      //                               child: Text('promotion'),
      //                               onPressed: () {
      //                                 print('promotion');
      //                               },
      //                               color: Colors.green,
      //                             ),
      //                           ),
      //                           subtitle: Column(
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               SizedBox(
      //                                 height: 3,
      //                               ),
      //                               Text('id is ' + emp[index].id.toString()),
      //                               SizedBox(
      //                                 height: 3,
      //                               ),
      //                               Text('work in department ' +
      //                                   emp[index].Department),
      //                               SizedBox(
      //                                 height: 40,
      //                               ),
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //         itemCount: emp.length,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
