// import 'package:flutter/material.dart';
// import 'package:flutter_web_app/Screens/addEmployeeScreen.dart';
// import 'package:flutter_web_app/Screens/employee_detail.dart';
// import 'package:flutter_web_app/models/employee.dart';
// import 'package:flutter_web_app/models/notifications_settings.dart';
// import 'package:flutter_web_app/widgets/sidebarEmps.dart';
// import 'package:flutter_web_app/apis/emplyee_provider.dart';
// import 'package:provider/provider.dart';
// import './left.dart';

// class Employees extends StatefulWidget {
//   // enum filters{}
//   static final route = '/employees';

//   @override
//   _EmployeesState createState() => _EmployeesState();
// }

// class _EmployeesState extends State<Employees> {
//   bool _isAll = true;
//   bool _isIt = false;
//   bool _isAccounting = false;
//   bool _isHr = false;
//   bool _isMark = false;
//   bool _isMang = false;
//   bool _isSale = false;
//   bool _isMaxev = false;
//   bool _isMinEv = false;

//   @override
//   Widget build(BuildContext context) {
//     final emp1 = Provider.of<EmployeeProvider>(context);

//     var emp = Provider.of<EmployeeProvider>(context, listen: true).employee;
//     final itEmp = Provider.of<EmployeeProvider>(context).getDepartment('IT');
//     final accountEmp =
//         Provider.of<EmployeeProvider>(context).getDepartment('Accounting');
//     final hrEmp = Provider.of<EmployeeProvider>(context).getDepartment('HR');
//     final salEmp =
//         Provider.of<EmployeeProvider>(context).getDepartment('sales');

//     final markEmp =
//         Provider.of<EmployeeProvider>(context).getDepartment('marketing');

//     final mangEmp = Provider.of<EmployeeProvider>(context).getMaxevaluation();
//     final maxEvEmp =
//         Provider.of<EmployeeProvider>(context).getDepartment('management');
//     final minEvEmp = Provider.of<EmployeeProvider>(context).getMinevaluation();

//     if (_isIt) {
//       emp = itEmp;
//       _isAccounting = false;
//       _isHr = false;
//       _isMang = false;
//       _isMark = false;
//       _isSale = false;
//       _isAll = false;
//     }
//     if (_isAccounting) {
//       emp = accountEmp;
//       _isIt = false;
//       _isHr = false;
//       _isMang = false;
//       _isMark = false;
//       _isSale = false;
//       _isAll = false;
//     }
//     if (_isHr) {
//       emp = hrEmp;
//       _isAccounting = false;
//       _isIt = false;
//       _isMang = false;
//       _isMark = false;
//       _isSale = false;
//       _isAll = false;
//     }
//     if (_isMang) {
//       emp = mangEmp;
//       _isAccounting = false;
//       _isHr = false;
//       _isIt = false;
//       _isMark = false;
//       _isSale = false;
//       _isAll = false;
//     }
//     if (_isMark) {
//       emp = markEmp;
//       _isAccounting = false;
//       _isHr = false;
//       _isMang = false;
//       _isIt = false;
//       _isSale = false;
//       _isAll = false;
//     }
//     if (_isSale) {
//       emp = salEmp;
//       _isAccounting = false;
//       _isHr = false;
//       _isMang = false;
//       _isMark = false;
//       _isIt = false;
//       _isAll = false;
//     }
//     if (_isAll) {
//       emp = emp;
//       _isAccounting = false;
//       _isHr = false;
//       _isMang = false;
//       _isMark = false;
//       _isIt = false;
//       _isSale = false;
//     }
//     if (_isIt || _isHr || _isMang || _isSale || _isMark || _isAccounting) {
//       _isAll = false;
//     }
//     if (_isMaxev) {
//       emp = maxEvEmp;
//       _isMinEv = false;
//     }
//     if (_isMinEv) {
//       emp = minEvEmp;
//       _isMaxev = false;
//     }
//     // Map<String, List<Employee>> newEmp = {
//     //   'IT': itEmp,
//     //   'Accounting': accountEmp,
//     //   'HR': hrEmp,
//     // };

//     return Scaffold(
//         backgroundColor: Colors.grey[200],
//         appBar: AppBar(
//           title: Text('Eployees'),
//           backgroundColor: Color(0xffF25767),
//           //toolbarOpacity: 0.2,
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed(AddEmployeeScreen.route);
//               },
//               icon: Icon(Icons.add),
//               iconSize: 50,
//               color: Colors.white,
//             )
//           ],
//         ),
//         // body: Container(
//         //   child: Text('hi'),
//         // ),

//         body: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Flexible(
//               child: Container(
//                 color: Colors.white24,
//                 child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(2.0),
//                     child: Card(
//                       elevation: 8,
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 4),
//                             child: Text(
//                               'Departments:',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.grey,
//                                   fontStyle: FontStyle.normal),
//                               textAlign: TextAlign.start,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                             width: MediaQuery.of(context).size.width,
//                           ),
//                           //  ),

//                           CheckboxListTile(
//                             value: _isAll,
//                             title: Text('All'),
//                             activeColor: Colors.white,
//                             checkColor: Color(0xffF25767),
//                             onChanged: (value) {
//                               setState(() {
//                                 _isAll = value;
//                                 if (_isAll) {
//                                   emp = emp;
//                                   _isAccounting = false;
//                                   _isHr = false;
//                                   _isMang = false;
//                                   _isMark = false;
//                                   _isIt = false;
//                                   _isSale = false;
//                                 }

//                                 emp.forEach((element) {
//                                   print(element.Department + element.name);
//                                 });
//                               });
//                             },
//                           ),
//                           CheckboxListTile(
//                             value: _isIt,
//                             title: Text('IT'),
//                             activeColor: Colors.white,
//                             checkColor: Color(0xffF25767),
//                             onChanged: (value) {
//                               setState(() {
//                                 _isIt = value;
//                                 if (_isIt) {
//                                   emp = itEmp;
//                                   _isAccounting = false;
//                                   _isHr = false;
//                                   _isMang = false;
//                                   _isMark = false;
//                                   _isSale = false;
//                                   _isAll = false;
//                                 }

//                                 emp.forEach((element) {
//                                   print(element.Department + element.name);
//                                 });
//                               });
//                             },
//                           ),

//                           CheckboxListTile(
//                               value: _isAccounting,
//                               title: Text('Accounting'),
//                               activeColor: Colors.white,
//                               checkColor: Color(0xffF25767),
//                               onChanged: (value) {
//                                 setState(() {
//                                   _isAccounting = value;
//                                   if (_isAccounting) {
//                                     emp = accountEmp;
//                                     _isIt = false;
//                                     _isHr = false;
//                                     _isMang = false;
//                                     _isMark = false;
//                                     _isIt = false;
//                                     _isAll = false;
//                                   }

//                                   emp.forEach((element) {
//                                     print(element.Department + element.name);
//                                   });
//                                 });
//                               }),

//                           CheckboxListTile(
//                               value: _isHr,
//                               title: Text('HR'),
//                               activeColor: Colors.white,
//                               checkColor: Color(0xffF25767),
//                               onChanged: (value) {
//                                 setState(() {
//                                   _isHr = value;

//                                   if (_isHr) {
//                                     emp = hrEmp;
//                                     _isAccounting = false;
//                                     _isIt = false;
//                                     _isMang = false;
//                                     _isMark = false;
//                                     _isIt = false;
//                                     _isAll = false;
//                                   }

//                                   emp.forEach((element) {
//                                     print(element.Department + element.name);
//                                   });
//                                 });
//                               }),
//                           CheckboxListTile(
//                               value: _isSale,
//                               title: Text('Sales'),
//                               activeColor: Colors.white,
//                               checkColor: Color(0xffF25767),
//                               onChanged: (value) {
//                                 setState(() {
//                                   _isSale = value;

//                                   if (_isSale) {
//                                     emp = salEmp;
//                                     _isAccounting = false;
//                                     _isHr = false;
//                                     _isMang = false;
//                                     _isMark = false;
//                                     _isIt = false;
//                                     _isAll = false;
//                                   }

//                                   emp.forEach((element) {
//                                     print(element.Department + element.name);
//                                   });
//                                 });
//                               }),
//                           CheckboxListTile(
//                               value: _isMark,
//                               title: Text('Marketing'),
//                               activeColor: Colors.white,
//                               checkColor: Color(0xffF25767),
//                               onChanged: (value) {
//                                 setState(() {
//                                   _isMark = value;

//                                   if (_isMark) {
//                                     emp = markEmp;
//                                     _isAccounting = false;
//                                     _isHr = false;
//                                     _isMang = false;
//                                     _isIt = false;
//                                     _isIt = false;
//                                     _isAll = false;
//                                   }

//                                   emp.forEach((element) {
//                                     print(element.Department + element.name);
//                                   });
//                                 });
//                               }),
//                           CheckboxListTile(
//                               value: _isMang,
//                               title: Text('Management'),
//                               activeColor: Colors.white,
//                               checkColor: Color(0xffF25767),
//                               onChanged: (value) {
//                                 setState(() {
//                                   _isMang = value;

//                                   if (_isMang) {
//                                     emp = mangEmp;
//                                     _isAccounting = false;
//                                     _isHr = false;
//                                     _isIt = false;
//                                     _isMark = false;
//                                     _isIt = false;
//                                     _isAll = false;
//                                   }

//                                   emp.forEach((element) {
//                                     print(element.Department + element.name);
//                                   });
//                                 });
//                               }),
//                           Divider(
//                             color: Colors.grey,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 4),
//                             child: Text(
//                               'Evaluation:',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.grey,
//                                   fontStyle: FontStyle.normal),
//                               textAlign: TextAlign.start,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                             width: MediaQuery.of(context).size.width,
//                           ),
//                           //  ),

//                           CheckboxListTile(
//                               value: _isMaxev,
//                               title: Text('Max'),
//                               activeColor: Colors.white,
//                               checkColor: Color(0xffF25767),
//                               onChanged: (value) {
//                                 setState(() {
//                                   _isMaxev = value;
//                                   if (_isMaxev) {
//                                     emp = maxEvEmp;
//                                     _isMinEv = false;
//                                   }
//                                 });
//                               }),
//                           SizedBox(
//                             height: 16,
//                           ),
//                           CheckboxListTile(
//                               value: _isMinEv,
//                               title: Text('Min'),
//                               activeColor: Colors.white,
//                               checkColor: Color(0xffF25767),
//                               onChanged: (value) {
//                                 setState(() {
//                                   _isMinEv = value;
//                                   if (_isMinEv) {
//                                     emp = minEvEmp;
//                                     _isMaxev = false;
//                                   }
//                                 });
//                               }),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               fit: FlexFit.loose,
//               flex: 1,
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Flexible(
//                 flex: 4,
//                 fit: FlexFit.loose,
//                 child: !_isAll &&
//                         !_isIt &&
//                         !_isHr &&
//                         !_isMang &&
//                         !_isSale &&
//                         !_isMark &&
//                         !_isAccounting
//                     ? Center(
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(9),
//                           child: Image.asset(
//                             'assets/waiting.png',
//                             width: 120,
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       )
//                     : ListView.builder(
//                         itemBuilder: (BuildContext context, int index) {
//                           return Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.of(context).pushReplacementNamed(
//                                     EmployeeDetail.route,
//                                     arguments: emp[index].id);
//                               },
//                               child: Container(
//                                 height: 200,
//                                 width: 80,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(25),
//                                   child: Card(
//                                     elevation: 80,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(top: 35),
//                                       child: Center(
//                                         child: ListTile(
//                                           title: Text(
//                                             emp[index].name,
//                                             style: TextStyle(fontSize: 30),
//                                           ),
//                                           leading: Container(
//                                             height: 200,
//                                             width: 200,
//                                             child: CircleAvatar(
//                                               backgroundColor: Colors.grey,
//                                               radius: 100,
//                                               child: SizedBox(
//                                                 height: 100,
//                                                 width: 100,
//                                                 child: CircleAvatar(
//                                                   backgroundColor:
//                                                       Colors.grey[100],
//                                                   radius: 45,
//                                                   child: FittedBox(
//                                                     child: Image(
//                                                       image: NetworkImage(
//                                                           emp[index].photo),
//                                                       fit: BoxFit.cover,
//                                                     ),
//                                                     fit: BoxFit.cover,
//                                                   ),

//                                                   //fit: BoxFit.cover,
//                                                 ),
//                                               ),
//                                               // maxRadius: 100,
//                                               // child: Padding(
//                                               //   padding: EdgeInsets.all(10),
//                                               //   child: FittedBox(
//                                               //     child: Image(
//                                               //       image: NetworkImage(
//                                               //           emp.employee[index].photo),
//                                               //       fit: BoxFit.cover,
//                                               //       width: 100,
//                                               //       height: 100,
//                                               //     ),
//                                               //     fit: BoxFit.cover,
//                                               //   ),
//                                               // ),
//                                             ),
//                                           ),
//                                           trailing: Padding(
//                                             padding: const EdgeInsets.only(
//                                                 right: 20),
//                                             child: IconButton(
//                                               alignment: Alignment.center,
//                                               icon: Icon(
//                                                 Icons.delete,
//                                                 size: 40,
//                                               ),
//                                               onPressed: () {
//                                                 print(
//                                                     'hi from delete button...');
//                                                 emp1.sendEmpArray(emp[index]);
//                                               },
//                                               color: Colors.red,
//                                             ),
//                                           ),
//                                           //  Padding(
//                                           //   padding: const EdgeInsets.only(
//                                           //       right: 20),
//                                           //   child: IconButton(
//                                           //     alignment: Alignment.center,
//                                           //     icon: Icon(
//                                           //       Icons.delete,
//                                           //       size: 40,
//                                           //     ),
//                                           //     onPressed: () {
//                                           //       emp1.deleteEmployee(emp[index]);
//                                           //     },
//                                           //     color: Colors.red,
//                                           //   ),
//                                           // ),
//                                           subtitle: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               SizedBox(
//                                                 height: 3,
//                                               ),
//                                               Text('id is ' +
//                                                   emp[index].id.toString()),
//                                               //Text(emp.employee[index].age.toString()),
//                                               // Text('address is'+emp.employee[index].address),
//                                               SizedBox(
//                                                 height: 3,
//                                               ),

//                                               Text('work in department ' +
//                                                   emp[index].Department),
//                                               SizedBox(
//                                                 height: 40,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                         itemCount: emp.length,
//                       )),
//           ],
//         ));
//   }
// }
//_________________________________________________________________________________

import 'package:flutter/material.dart';
import 'package:flutter_web_app/Screens/addEmployeeScreen.dart';
import 'package:flutter_web_app/Screens/employee_detail.dart';
import 'package:flutter_web_app/models/employee.dart';
import 'package:flutter_web_app/models/notifications_settings.dart';
import 'package:flutter_web_app/widgets/sidebarEmps.dart';
import 'package:flutter_web_app/apis/emplyee_provider.dart';
// import 'package:moor/moor.dart';
import 'package:provider/provider.dart';
import 'promotion.dart';

class Employees extends StatefulWidget {
  // enum filters{}
  static final route = '/employees';

  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  bool _isAll = true;
  bool _isIt = false;
  bool _isAccounting = false;
  bool _isHr = false;
  bool _isMark = false;
  bool _isMang = false;
  bool _isSale = false;
  bool _isMaxev = false;
  bool _isMinEv = false;
  bool _isMinTime = false;
  bool _isMaxTime = false;

  @override
  Widget build(BuildContext context) {
    final emp1 = Provider.of<EmployeeProvider>(context);

    var emp = Provider.of<EmployeeProvider>(context, listen: true).employee;
    final itEmp = Provider.of<EmployeeProvider>(context).getDepartment('IT');
    final accountEmp =
        Provider.of<EmployeeProvider>(context).getDepartment('Accounting');
    final hrEmp = Provider.of<EmployeeProvider>(context).getDepartment('HR');
    final salEmp =
        Provider.of<EmployeeProvider>(context).getDepartment('sales');

    final markEmp =
        Provider.of<EmployeeProvider>(context).getDepartment('marketing');

    final mangEmp =
        Provider.of<EmployeeProvider>(context).getDepartment('management');
    final maxEvEmp = Provider.of<EmployeeProvider>(context).getMaxevaluation();
    final minEvEmp = Provider.of<EmployeeProvider>(context).getMinevaluation();
    final minTEmp = Provider.of<EmployeeProvider>(context).getMinTime();

    final maxTEmp = Provider.of<EmployeeProvider>(context).getMaxTime();

    if (_isIt) {
      emp = itEmp;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isSale = false;
      _isAll = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMaxTime = false;
      _isMinTime = false;
    }
    if (_isAccounting) {
      emp = accountEmp;
      _isIt = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isSale = false;
      _isAll = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMaxTime = false;
      _isMinTime = false;
    }
    if (_isHr) {
      emp = hrEmp;
      _isAccounting = false;
      _isIt = false;
      _isMang = false;
      _isMark = false;
      _isSale = false;
      _isAll = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMaxTime = false;
      _isMinTime = false;
    }
    if (_isMang) {
      emp = mangEmp;
      _isAccounting = false;
      _isHr = false;
      _isIt = false;
      _isMark = false;
      _isSale = false;
      _isAll = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMaxTime = false;
      _isMinTime = false;
    }
    if (_isMark) {
      emp = markEmp;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isIt = false;
      _isSale = false;
      _isAll = false;
      _isMaxTime = false;
      _isMinTime = false;
      _isMaxev = false;
      _isMinEv = false;
    }
    if (_isSale) {
      emp = salEmp;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isIt = false;
      _isAll = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMaxTime = false;
      _isMinTime = false;
    }
    if (_isAll) {
      emp = emp;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isIt = false;
      _isSale = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMaxTime = false;
      _isMinTime = false;
    }
    if (_isMinTime) {
      emp = minTEmp;
      _isIt = false;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isSale = false;
      _isAll = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMaxTime = false;
    }
    if (_isMaxTime) {
      emp = maxTEmp;
      _isIt = false;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isSale = false;
      _isAll = false;
      _isMaxev = false;
      _isMinEv = false;
      _isMinTime = false;
    }
    if (_isIt ||
        _isHr ||
        _isMang ||
        _isSale ||
        _isMark ||
        _isAccounting ||
        _isMaxev ||
        _isMinEv ||
        _isMaxTime ||
        _isMinTime) {
      _isAll = false;
    }
    if (_isMaxev) {
      emp = maxEvEmp;
      _isMinEv = false;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isIt = false;
      _isSale = false;
      _isMaxTime = false;
      _isMinTime = false;
      _isAll = false;
    }
    if (_isMinEv) {
      emp = minEvEmp;
      _isMaxev = false;
      _isAccounting = false;
      _isHr = false;
      _isMang = false;
      _isMark = false;
      _isIt = false;
      _isSale = false;
      _isMaxTime = false;
      _isMinTime = false;
      _isAll = false;
    }
    // Map<String, List<Employee>> newEmp = {
    //   'IT': itEmp,
    //   'Accounting': accountEmp,
    //   'HR': hrEmp,
    // };

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Employees'),
          backgroundColor: Color(0xffF25767),
          //toolbarOpacity: 0.2,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AddEmployeeScreen.route);
                //Navigator.of(context).pop();
              },
              icon: Icon(Icons.add),
              iconSize: 50,
              color: Colors.white,
            )
          ],
        ),
        // body: Container(
        //   child: Text('hi'),
        // ),

        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                color: Colors.white24,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Card(
                      elevation: 8,
                      child: SingleChildScrollView(
                        child: Container(
                          height: 2000,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  'Departments:',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: MediaQuery.of(context).size.width,
                              ),
                              //  ),

                              CheckboxListTile(
                                value: _isAll,
                                title: Text('All'),
                                activeColor: Colors.white,
                                checkColor: Color(0xffF25767),
                                onChanged: (value) {
                                  setState(() {
                                    _isAll = value;
                                    if (_isAll) {
                                      emp = emp;
                                      _isAccounting = false;
                                      _isHr = false;
                                      _isMang = false;
                                      _isMark = false;
                                      _isIt = false;
                                      _isSale = false;
                                      _isMaxev = false;
                                      _isMinEv = false;
                                      _isMaxTime = false;
                                      _isMinTime = false;
                                    }

                                    emp.forEach((element) {
                                      print(element.Department + element.name);
                                    });
                                  });
                                },
                              ),
                              CheckboxListTile(
                                value: _isIt,
                                title: Text('IT'),
                                activeColor: Colors.white,
                                checkColor: Color(0xffF25767),
                                onChanged: (value) {
                                  setState(() {
                                    _isIt = value;
                                    if (_isIt) {
                                      emp = itEmp;
                                      _isAccounting = false;
                                      _isHr = false;
                                      _isMang = false;
                                      _isMark = false;
                                      _isSale = false;
                                      _isAll = false;
                                      _isMaxev = false;
                                      _isMinEv = false;
                                      _isMaxTime = false;
                                      _isMinTime = false;
                                    }

                                    emp.forEach((element) {
                                      print(element.Department + element.name);
                                    });
                                  });
                                },
                              ),

                              CheckboxListTile(
                                  value: _isAccounting,
                                  title: Text('Accounting'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isAccounting = value;
                                      if (_isAccounting) {
                                        emp = accountEmp;
                                        _isIt = false;
                                        _isHr = false;
                                        _isMang = false;
                                        _isMark = false;
                                        _isIt = false;
                                        _isAll = false;
                                        _isMaxev = false;
                                        _isMinEv = false;
                                        _isMaxTime = false;
                                        _isMinTime = false;
                                      }

                                      emp.forEach((element) {
                                        print(
                                            element.Department + element.name);
                                      });
                                    });
                                  }),

                              CheckboxListTile(
                                  value: _isHr,
                                  title: Text('HR'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isHr = value;

                                      if (_isHr) {
                                        emp = hrEmp;
                                        _isAccounting = false;
                                        _isIt = false;
                                        _isMang = false;
                                        _isMark = false;
                                        _isIt = false;
                                        _isAll = false;
                                        _isMaxev = false;
                                        _isMinEv = false;
                                        _isMaxTime = false;
                                        _isMinTime = false;
                                      }

                                      emp.forEach((element) {
                                        print(
                                            element.Department + element.name);
                                      });
                                    });
                                  }),
                              CheckboxListTile(
                                  value: _isSale,
                                  title: Text('Sales'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isSale = value;

                                      if (_isSale) {
                                        emp = salEmp;
                                        _isAccounting = false;
                                        _isHr = false;
                                        _isMang = false;
                                        _isMark = false;
                                        _isIt = false;
                                        _isAll = false;
                                        _isMaxev = false;
                                        _isMinEv = false;
                                        _isMaxTime = false;
                                        _isMinTime = false;
                                      }

                                      emp.forEach((element) {
                                        print(
                                            element.Department + element.name);
                                      });
                                    });
                                  }),
                              CheckboxListTile(
                                  value: _isMark,
                                  title: Text('Marketing'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isMark = value;

                                      if (_isMark) {
                                        emp = markEmp;
                                        _isAccounting = false;
                                        _isHr = false;
                                        _isMang = false;
                                        _isIt = false;
                                        _isIt = false;
                                        _isAll = false;
                                        _isMaxev = false;
                                        _isMinEv = false;
                                        _isMaxTime = false;
                                        _isMinTime = false;
                                      }

                                      emp.forEach((element) {
                                        print(
                                            element.Department + element.name);
                                      });
                                    });
                                  }),
                              CheckboxListTile(
                                  value: _isMang,
                                  title: Text('Management'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isMang = value;

                                      if (_isMang) {
                                        emp = mangEmp;
                                        _isAccounting = false;
                                        _isHr = false;
                                        _isIt = false;
                                        _isMark = false;
                                        _isIt = false;
                                        _isAll = false;
                                        _isMaxev = false;
                                        _isMinEv = false;
                                        _isMaxTime = false;
                                        _isMinTime = false;
                                      }

                                      emp.forEach((element) {
                                        print(
                                            element.Department + element.name);
                                      });
                                    });
                                  }),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Divider(
                                  color: Colors.grey,
                                ),
                                // child: Center(

                                // ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  'Evaluation:',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: MediaQuery.of(context).size.width,
                              ),
                              //  ),

                              CheckboxListTile(
                                  value: _isMaxev,
                                  title: Text('Max'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isMaxev = value;
                                      // emp = maxEvEmp;
                                      if (_isMaxev) {
                                        emp = maxEvEmp;

                                        _isMinEv = false;
                                        _isAccounting = false;
                                        _isHr = false;
                                        _isIt = false;
                                        _isMark = false;
                                        _isIt = false;
                                        _isAll = false;
                                        _isMaxTime = false;
                                        _isMinTime = false;
                                        _isMang = false;
                                      }
                                      emp.forEach((element) {
                                        print('evaluation');
                                        print(
                                            element.last_evaluation.toString());
                                        print(maxEvEmp.length);
                                      });
                                    });
                                  }),
                              SizedBox(
                                height: 16,
                              ),
                              CheckboxListTile(
                                  value: _isMinEv,
                                  title: Text('Min'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isMinEv = value;
                                      if (_isMinEv) {
                                        emp = minEvEmp;
                                        _isMaxev = false;
                                        _isAccounting = false;
                                        _isHr = false;
                                        _isIt = false;
                                        _isMark = false;
                                        _isIt = false;
                                        _isAll = false;
                                        _isMaxTime = false;
                                        _isMinTime = false;
                                        _isMang = false;
                                      }
                                    });
                                    emp.forEach((element) {
                                      print('evaluation');
                                      print(element.last_evaluation.toString());
                                      print(minEvEmp.length);
                                    });
                                  }),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Divider(
                                  color: Colors.grey,
                                ),
                                // child: Center(

                                // ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  'Time Spend In Company :',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                                width: MediaQuery.of(context).size.width,
                              ),

                              CheckboxListTile(
                                  value: _isMaxTime,
                                  title: Text('Max'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isMaxTime = value;
                                      // emp = maxEvEmp;
                                      if (_isMaxTime) {
                                        emp = maxTEmp;

                                        _isIt = false;
                                        _isAccounting = false;
                                        _isHr = false;
                                        _isMang = false;
                                        _isMark = false;
                                        _isSale = false;
                                        _isAll = false;
                                        _isMaxev = false;
                                        _isMinEv = false;
                                        _isMinTime = false;
                                      }
                                      emp.forEach((element) {
                                        print(
                                            'MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAX');
                                        print(element.time_spend_company
                                            .toString());
                                        print(maxTEmp.length);
                                      });
                                    });
                                  }),
                              SizedBox(
                                height: 16,
                              ),
                              CheckboxListTile(
                                  value: _isMinTime,
                                  title: Text('Min'),
                                  activeColor: Colors.white,
                                  checkColor: Color(0xffF25767),
                                  onChanged: (value) {
                                    setState(() {
                                      _isMinTime = value;
                                      if (_isMinTime) {
                                        emp = minTEmp;
                                        _isIt = false;
                                        _isAccounting = false;
                                        _isHr = false;
                                        _isMang = false;
                                        _isMark = false;
                                        _isSale = false;
                                        _isAll = false;
                                        _isMaxev = false;
                                        _isMinEv = false;
                                        _isMaxTime = false;
                                      }
                                    });
                                    emp.forEach((element) {
                                      print(
                                          'Miiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiin');
                                      print(element.last_evaluation.toString());
                                      print(minEvEmp.length);
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              fit: FlexFit.loose,
              flex: 1,
            ),
            SizedBox(
              width: 5,
            ),
            Flexible(
                flex: 4,
                fit: FlexFit.loose,
                child: !_isAll &&
                        !_isIt &&
                        !_isHr &&
                        !_isMang &&
                        !_isSale &&
                        !_isMark &&
                        !_isAccounting &&
                        !_isMaxev &&
                        !_isMinEv
                    ? Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: Image.asset(
                            'assets/waiting.png',
                            width: 120,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed(
                                    EmployeeDetail.route,
                                    arguments: emp[index].id);
                              },
                              child: Container(
                                height: 200,
                                width: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Card(
                                    elevation: 80,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 35),
                                      child: Center(
                                        child: ListTile(
                                          title: Text(
                                            emp[index].name,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          leading: Container(
                                            height: 200,
                                            width: 200,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.grey,
                                              radius: 100,
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Colors.grey[100],
                                                  radius: 45,
                                                  child: FittedBox(
                                                    child: Image(
                                                      image: NetworkImage(
                                                          emp[index].photo),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),

                                                  //fit: BoxFit.cover,
                                                ),
                                              ),
                                              // maxRadius: 100,
                                              // child: Padding(
                                              //   padding: EdgeInsets.all(10),
                                              //   child: FittedBox(
                                              //     child: Image(
                                              //       image: NetworkImage(
                                              //           emp.employee[index].photo),
                                              //       fit: BoxFit.cover,
                                              //       width: 100,
                                              //       height: 100,
                                              //     ),
                                              //     fit: BoxFit.cover,
                                              //   ),
                                              // ),
                                            ),
                                          ),
                                          trailing: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: IconButton(
                                              alignment: Alignment.center,
                                              icon: Icon(
                                                Icons.delete,
                                                size: 40,
                                              ),
                                              onPressed: () {
                                                print(
                                                    'hi from delete button...');
                                                setState(() {
                                                  emp1.deleteEmployee(
                                                      emp[index].id);
                                                });
                                              },
                                              color: Colors.red,
                                            ),
                                          ),
                                          //  Padding(
                                          //   padding: const EdgeInsets.only(
                                          //       right: 20),
                                          //   child: IconButton(
                                          //     alignment: Alignment.center,
                                          //     icon: Icon(
                                          //       Icons.delete,
                                          //       size: 40,
                                          //     ),
                                          //     onPressed: () {
                                          //       emp1.deleteEmployee(emp[index]);
                                          //     },
                                          //     color: Colors.red,
                                          //   ),
                                          // ),
                                          subtitle: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text('id is ' +
                                                  emp[index].id.toString()),
                                              //Text(emp.employee[index].age.toString()),
                                              // Text('address is'+emp.employee[index].address),
                                              SizedBox(
                                                height: 3,
                                              ),

                                              Text('work in department ' +
                                                  emp[index].Department),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              // ClipRRect(
                                              //   borderRadius:
                                              //       BorderRadius.circular(10),
                                              //   child: RaisedButton(
                                              //     onPressed: () {
                                              //       emp1.sendEmpArray(
                                              //           emp[index]);
                                              //       print(
                                              //           '********|||*********');
                                              //       if (emp1.n == 0) {
                                              //         Navigator.of(context)
                                              //             .pushNamed(
                                              //                 NPromotion.route);
                                              //       }
                                              //       if (emp1.n == 1) {
                                              //         Navigator.of(context)
                                              //             .pushNamed(
                                              //                 Promotion.route);
                                              //       }
                                              //
                                              //       // Navigator.of(context)
                                              //       //     .pushNamed(
                                              //       //         Promotion.route);
                                              //
                                              //       // Navigator.of(context)
                                              //       //     .pushNamed(
                                              //       //         NPromotion.route);
                                              //     },
                                              //     color: Colors.green,
                                              //     child: Text(
                                              //       'check promotion',
                                              //       style: TextStyle(
                                              //           color: Colors.white),
                                              //     ),
                                              //   ),
                                              // )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: emp.length,
                      )),
          ],
        ));
  }
}
